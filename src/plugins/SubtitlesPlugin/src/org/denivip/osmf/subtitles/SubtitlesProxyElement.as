package org.denivip.osmf.subtitles {
	
	import org.osmf.elements.ProxyElement;
	import org.osmf.events.LoadEvent;
	import org.osmf.events.MediaElementEvent;
	import org.osmf.media.MediaElement;
	import org.osmf.metadata.Metadata;
	import org.osmf.traits.LoadState;
	import org.osmf.traits.LoadTrait;
	import org.osmf.traits.MediaTraitType;
	
	CONFIG::LOGGING {
		import org.osmf.logging.Log;
		import org.osmf.logging.Logger;
	}
	
	public class SubtitlesProxyElement extends ProxyElement {
		
		CONFIG::LOGGING {
			private static const logger:Logger = Log.getLogger("org.denivip.osmf.subtitles.SubtitlesProxyElement");
		}
		
		private var mediaLoadTrait:LoadTrait;
		private var subtitlesTrait:SubtitlesTrait;
		
		public function SubtitlesProxyElement(proxiedElement:MediaElement=null) {
			super(proxiedElement);
		}
		
		override public function set proxiedElement(value:MediaElement):void {
			super.proxiedElement = value;
			
			if (value == null) return;
			
			var media:MediaElement = super.proxiedElement;
			
			if (media && resource) {
				var subsMeta:Metadata = resource.getMetadataValue(SubtitlesPluginInfo.NAMESPACE) as Metadata;
				var subtitlesSource:String = subsMeta.getValue('src');
				var subtitles:Object;
				if (subtitlesSource && subtitlesSource.length) {
					CONFIG::LOGGING {
						logger.info("Start decoding subtitles settings");
					}
					try {
						subtitles = JSON.parse(subtitlesSource);
						CONFIG::LOGGING {
							logger.info("Finish decoding subtitles settings");
						}
					} catch(error:Error) {
						CONFIG::LOGGING {
							logger.error("Error occured while decoding json subtitles settings {0}: {1}", error.errorID, error.message);
						}
					}
				}
				if (subtitles && "subtitles" in subtitles) {
					var sources:Vector.<SubtitlesSourceItem> = new Vector.<SubtitlesSourceItem>();
					for each (var item:Object in subtitles.subtitles) {
						sources.push(new SubtitlesSourceItem(item.src, item.label, item.language));
					}
					if (sources.length) {
						subtitlesTrait = new SubtitlesTrait(sources, media);
						mediaLoadTrait = media.getTrait(MediaTraitType.LOAD) as LoadTrait;
						if (mediaLoadTrait) {
							mediaLoadTrait.addEventListener(LoadEvent.LOAD_STATE_CHANGE, onMediaLoadStateChange);
						} else {
							media.addEventListener(MediaElementEvent.TRAIT_ADD, onTraitAdd);
						}
						media.addEventListener(MediaElementEvent.TRAIT_REMOVE, onTraitRemove);
						checkReady();
					}
				}
			}
		}
		
		private function onMediaLoadStateChange(event:LoadEvent):void {
			checkReady();
		}
		
		private function onTraitAdd(event:MediaElementEvent):void {
			if (!mediaLoadTrait && event.traitType == MediaTraitType.LOAD) {
				mediaLoadTrait = super.proxiedElement.getTrait(MediaTraitType.LOAD) as LoadTrait;
				mediaLoadTrait.addEventListener(LoadEvent.LOAD_STATE_CHANGE, onMediaLoadStateChange);
				checkReady();
			}
		}
		
		private function onTraitRemove(event:MediaElementEvent):void {
			if (mediaLoadTrait && event.traitType == MediaTraitType.LOAD) {
				checkReady();
				if (mediaLoadTrait) {
					mediaLoadTrait.removeEventListener(LoadEvent.LOAD_STATE_CHANGE, onMediaLoadStateChange);
					mediaLoadTrait = null;
				}
			}
		}
		
		private function checkReady():void {
			if (!mediaLoadTrait || mediaLoadTrait.loadState != LoadState.READY) return;
			addTrait(SubtitlesTrait.SUBTITLES, subtitlesTrait);
			super.proxiedElement.removeEventListener(MediaElementEvent.TRAIT_ADD, onTraitAdd);
			super.proxiedElement.removeEventListener(MediaElementEvent.TRAIT_REMOVE, onTraitRemove);
			mediaLoadTrait.removeEventListener(LoadEvent.LOAD_STATE_CHANGE, onMediaLoadStateChange);
			mediaLoadTrait = null;
		}
		
	}
	
}
