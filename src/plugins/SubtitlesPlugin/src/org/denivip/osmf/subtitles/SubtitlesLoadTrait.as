package org.denivip.osmf.subtitles {
	
	import org.osmf.media.MediaResourceBase;
	import org.osmf.traits.LoadTrait;
	import org.osmf.traits.LoaderBase;
	
	public class SubtitlesLoadTrait extends LoadTrait {
		
		public var index:uint;
		public var subtitlesVO:SubtitlesVO;
		
		public function SubtitlesLoadTrait(loader:LoaderBase, resource:MediaResourceBase) {
			super(loader, resource);
		}
		
		override public function unload():void {
			subtitlesVO = null;
			super.unload();
		}
		
	}
	
}
