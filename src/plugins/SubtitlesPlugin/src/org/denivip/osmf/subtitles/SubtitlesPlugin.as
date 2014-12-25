package org.denivip.osmf.subtitles  {
	
	import flash.display.Sprite;
	
	import org.osmf.media.PluginInfo;
	
	public class SubtitlesPlugin extends Sprite {
		
		private var _pluginInfo:PluginInfo;
		
		public function SubtitlesPlugin() {
			_pluginInfo = new SubtitlesPluginInfo();
		}
		
		public function get pluginInfo():PluginInfo {
			return _pluginInfo;
		}
		
	}
	
}
