package org.denivip.osmf.subtitles {
	
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import org.osmf.events.MediaError;
	import org.osmf.events.MediaErrorEvent;
	import org.osmf.media.MediaResourceBase;
	import org.osmf.media.URLResource;
	import org.osmf.traits.LoadState;
	import org.osmf.traits.LoadTrait;
	import org.osmf.traits.LoaderBase;
	import org.osmf.utils.OSMFSettings;
	
	CONFIG::LOGGING {
		import org.osmf.logging.Log;
		import org.osmf.logging.Logger;
	}
	
	public class SubtitlesLoader extends LoaderBase {
		
		CONFIG::LOGGING {
			private static const logger:Logger = Log.getLogger("org.denivip.osmf.subtitles.SubtitlesLoader");
		}
		
		private var retryTimeout:uint;
		
		override public function canHandleResource(media:MediaResourceBase):Boolean {
			return true;
		}
		
		override protected function executeLoad(loadTrait:LoadTrait):void {
			updateLoadTrait(loadTrait, LoadState.LOADING);
			
			var resource:URLResource = loadTrait.resource as URLResource;
			var req:URLRequest = new URLRequest(resource.url);
			CONFIG::LOGGING {
				logger.info("Start loading subtitles item: {0}", req.url);
			}
			var loader:URLLoader = new URLLoader(req);
			
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
			
			function removeListeners():void {
				loader.removeEventListener(Event.COMPLETE, onComplete);
				loader.removeEventListener(IOErrorEvent.IO_ERROR, onError);
				loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
			}
			
			var retries:uint = OSMFSettings.hdsMaximumRetries;
			function onError(event:ErrorEvent):void {
				CONFIG::LOGGING {
					logger.info("Error occured while loading subtitles item: {0}: {1}", event.errorID, event.text);
				}
				retries--;
				if (event is SecurityErrorEvent) {
					retries = 0;
				}
				if (retries == 0) {
					removeListeners();
					updateLoadTrait(loadTrait, LoadState.LOAD_ERROR);
					var mediaError:MediaError = new MediaError(0, event.text);
					mediaError.message = "Error occured while loading subtitles item";
					loadTrait.dispatchEvent(new MediaErrorEvent(MediaErrorEvent.MEDIA_ERROR, false, false, mediaError));
				} else {
					CONFIG::LOGGING {
						logger.info("Retry load subtitles item");
					}
					retryTimeout = setTimeout(loader.load, 1000, req);
				}
			}
			
			function onComplete(event:Event):void {
				removeListeners();
				CONFIG::LOGGING {
					logger.info("Subtitles item download succefully");
				}
				try {
					CONFIG::LOGGING {
						logger.info("Start parsing subtitles item");
					}
					var data:String = String((event.target as URLLoader).data);
					SubtitlesLoadTrait(loadTrait).subtitlesVO = SRTParser.parse(data);
					CONFIG::LOGGING {
						logger.info("Finish parsing subtitles item");
					}
					updateLoadTrait(loadTrait, LoadState.READY);
				} catch (error:Error) {
					CONFIG::LOGGING {
						logger.error("Error occured while parsing subtitles item {0}: {1}", error.errorID, error.message);
					}
					updateLoadTrait(loadTrait, LoadState.LOAD_ERROR);
					var mediaError:MediaError = new MediaError(0, error.message);
					mediaError.message = "Error occured while parsing subtitles item";
					loadTrait.dispatchEvent(new MediaErrorEvent(MediaErrorEvent.MEDIA_ERROR, false, false, mediaError));
				}
			}
		}
		
		override protected function executeUnload(loadTrait:LoadTrait):void {
			clearTimeout(retryTimeout);
			updateLoadTrait(loadTrait, LoadState.UNLOADING);			
			updateLoadTrait(loadTrait, LoadState.UNINITIALIZED);
		}
		
	}
	
}
