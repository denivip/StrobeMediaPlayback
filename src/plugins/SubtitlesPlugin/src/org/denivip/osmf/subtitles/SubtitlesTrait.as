package org.denivip.osmf.subtitles {
	
	import org.osmf.events.LoadEvent;
	import org.osmf.media.MediaElement;
	import org.osmf.media.URLResource;
	import org.osmf.metadata.TimelineMetadata;
	import org.osmf.traits.LoadState;
	import org.osmf.traits.MediaTraitBase;
	
	[Event(name="subtitlesSwitchingChange", type="org.denivip.osmf.subtitles.SubtitlesEvent")]
	
	public class SubtitlesTrait extends MediaTraitBase {
		
		public static const SUBTITLES:String = "subtitles";
		
		protected static const INVALID_TRANSITION_INDEX:int = -2;
		protected static const DEFAULT_TRANSITION_INDEX:int = -1;
		
		private static const SUBTITLES_INDEX_ERROR:String = "subtitles invalid index";
		
		private var media:MediaElement;
		private var indexSwitchTo:int = INVALID_TRANSITION_INDEX;
		
		private var _currentIndex:int = DEFAULT_TRANSITION_INDEX;
		private var _sources:Vector.<SubtitlesSourceItem>;
		private var _switching:Boolean;
		
		protected var _indexToSwitchTo:int = INVALID_TRANSITION_INDEX;
		
		public function SubtitlesTrait(sources:Vector.<SubtitlesSourceItem>, media:MediaElement) {
			super(SUBTITLES);
			_sources = sources;
			this.media = media;
		}
		
		public function get numSubtitles():int { return _sources.length }
		public function get currentIndex():int { return _currentIndex }
		public function get switching():Boolean { return _switching }
		
		public function getItemForIndex(index:int):SubtitlesSourceItem {
			if (index <= DEFAULT_TRANSITION_INDEX || index >= numSubtitles) {
				throw new RangeError(SUBTITLES_INDEX_ERROR);
			}
			return _sources[index];
		}
		
		public function switchTo(index:int):void {
			if (index == indexSwitchTo) return;
			
			if (index <= INVALID_TRANSITION_INDEX || index >= numSubtitles) {
				throw new RangeError(SUBTITLES_INDEX_ERROR);
			}
			
			if (index == DEFAULT_TRANSITION_INDEX || getItemForIndex(index).subtitlesMetadata) {
				setSwitching(false, index);
			} else {
				setSwitching(true, index);
			}
		}
		
		override public function dispose():void {
			_sources = null;
			media = null;
		}
		
		private function setSwitching(newSwitching:Boolean, index:int):void {
			if (newSwitching != _switching || index != indexSwitchTo) {
				beginSwitching(newSwitching, index);
				
				_switching = newSwitching;
				if (_switching == false) {
					_currentIndex = index;
				}
				
				endSwitching(index);
			}
		}
		
		private function beginSwitching(newSwitching:Boolean, index:int):void {
			if (newSwitching) {
				indexSwitchTo = index;
				
				var loadTrait:SubtitlesLoadTrait = new SubtitlesLoadTrait(new SubtitlesLoader(), new URLResource(getItemForIndex(indexSwitchTo).src));
				loadTrait.index = indexSwitchTo;
				loadTrait.addEventListener(LoadEvent.LOAD_STATE_CHANGE, onLoadStateChange);
				loadTrait.load();
			}
		}
		
		private function endSwitching(index:int):void {
			if (!_switching) {
				indexSwitchTo = INVALID_TRANSITION_INDEX;	
			}
			
			dispatchEvent(new SubtitlesEvent(
				SubtitlesEvent.SUBTITLES_SWITCHING_CHANGE
				, false
				, false
				, switching
				)
			);
		}
		
		private function onLoadStateChange(event:LoadEvent):void {
			var loadTrait:SubtitlesLoadTrait = event.target as SubtitlesLoadTrait;
			
			if (event.loadState == LoadState.READY) {
				var subtitlesVO:SubtitlesVO = loadTrait.subtitlesVO;
				
				var subtitlesMetadata:TimelineMetadata = new TimelineMetadata(media);
				for each (var item:SubtitlesItemVO in subtitlesVO.items) {
					subtitlesMetadata.addMarker(new SubtitlesMarker(item.start, item.duration, item.text));
				}
				
				_sources[loadTrait.index].subtitlesMetadata = subtitlesMetadata;
				
				loadTrait.unload();
				
				if (indexSwitchTo == loadTrait.index) {
					setSwitching(false, indexSwitchTo);
				}
			} else if (event.loadState == LoadState.LOAD_ERROR) {
				loadTrait.unload();
				setSwitching(false, currentIndex);
			}
		}
		
	}
	
}
