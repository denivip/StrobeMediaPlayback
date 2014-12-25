package org.denivip.osmf.subtitles {
	
	import org.osmf.metadata.TimelineMetadata;
	
	public class SubtitlesSourceItem {

		public var subtitlesMetadata:TimelineMetadata;
		
		private var _src:String;
		private var _label:String;
		private var _language:String;
		
		public function SubtitlesSourceItem(src:String, label:String, language:String) {
			_src = src;
			_label = label;
			_language = language;
		}
		
		public function get src():String { return _src }
		public function get label():String { return _label }
		public function get language():String { return _language }
		
	}
	
}
