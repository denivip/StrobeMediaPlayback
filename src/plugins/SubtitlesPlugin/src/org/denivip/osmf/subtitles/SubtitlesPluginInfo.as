package org.denivip.osmf.subtitles {
	
	import org.osmf.media.MediaElement;
	import org.osmf.media.MediaFactoryItem;
	import org.osmf.media.MediaFactoryItemType;
	import org.osmf.media.MediaResourceBase;
	import org.osmf.media.PluginInfo;
	import org.osmf.metadata.Metadata;
	import org.osmf.net.NetLoader;
	
	public class SubtitlesPluginInfo extends PluginInfo {
		
		public static const NAMESPACE:String = "org.denivip.osmf.subtitles";
		
		private var temp_config:Metadata = null;
		
		public function SubtitlesPluginInfo() {
			var items:Vector.<MediaFactoryItem> = new Vector.<MediaFactoryItem>();
			
			var loader:NetLoader = new NetLoader();
			items.push(new MediaFactoryItem("org.denivip.osmf.subtitles.SubtitlesPlugin"
				, function(resource:MediaResourceBase):Boolean {
					if(temp_config){
						var md:Metadata = new Metadata();
						md.addValue("adsEnabled", "true");
						resource.addMetadataValue("http://www.liverail.com/plugins/osmf/metadata",md);
						
						resource.addMetadataValue(NAMESPACE, temp_config);
						return true;
					}
					return false;
				}
				, function():MediaElement {
					var el:MediaElement =  new SubtitlesProxyElement();
					
					var md:Metadata = new Metadata();
					md.addValue("adsEnabled", "true");
					el.addMetadata("http://www.liverail.com/plugins/osmf/metadata",md);
					
					return el;
				}
				, MediaFactoryItemType.PROXY)
			);
			
			super(items);
		}
		
		override public function initializePlugin(resource:MediaResourceBase):void{
			temp_config = resource.getMetadataValue(NAMESPACE) as Metadata;
		}
	}
	
}
