package org.denivip.osmf.subtitles {
	
	import flash.events.Event;
	
	public class SubtitlesEvent extends Event {
		
		public static const HAS_SUBTITLES_CHANGE:String = "hasSubtitlesChange";
		public static const SUBTITLES_SWITCHING_CHANGE:String = "subtitlesSwitchingChange";
		public static const NUM_SUBTITLES_STREAMS_CHANGE:String = "numSubtitlesStreamsChange";
		
		private var _switching:Boolean;
		
		public function SubtitlesEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false, switching:Boolean=false) {
			super(type, bubbles, cancelable);
			_switching = switching;
		}
		
		public function get switching():Boolean { return _switching }
		
		override public function clone():Event {
			return new SubtitlesEvent(type, bubbles, cancelable, switching);
		}
		
	}
	
}
