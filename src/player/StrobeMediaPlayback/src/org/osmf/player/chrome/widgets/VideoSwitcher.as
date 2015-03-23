package org.osmf.player.chrome.widgets
{
	import flash.events.MouseEvent;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import org.osmf.layout.HorizontalAlign;
	import org.osmf.layout.LayoutMode;
	import org.osmf.layout.VerticalAlign;
	import org.osmf.media.MediaElement;
	import org.osmf.player.chrome.assets.AssetIDs;
	import org.osmf.player.chrome.assets.AssetsManager;
	import org.osmf.player.chrome.assets.FontAsset;
	import org.osmf.player.chrome.hint.WidgetHint;

	public class VideoSwitcher extends ButtonWidget
	{
		
		//private var textField:LabelWidget;
		private var swMenu:VideoMenu;
		
		private var _showed:Boolean = false;
		
		public function VideoSwitcher()
		{
			super();
			
			upFace = AssetIDs.HD_OFF;
			overFace = AssetIDs.HD_OVER;
			downFace = AssetIDs.HD_OVER;
		}
		
		override public function configure(xml:XML, assetManager:AssetsManager):void{
			layoutMetadata.percentHeight = 100;
			
			swMenu = new VideoMenu();
			swMenu.configure(xml, assetManager);
			swMenu.layoutMetadata.layoutMode = LayoutMode.VERTICAL;
			
			super.configure(xml, assetManager);
			
			measure();
		}
		
		override public function set media(value:MediaElement):void{
			if(value != null){
				super.media = value;
				swMenu.media = value;
			}
		}
		
		override public function layout(availableWidth:Number, availableHeight:Number, deep:Boolean=true):void{
			WidgetHint.getInstance(this).hide();
			updateLayout();
			super.layout(availableWidth, availableHeight);
		}
		
		override protected function onMouseOver(event:MouseEvent):void{
			WidgetHint.getInstance(this).horizontalAlign = HorizontalAlign.CENTER;
			WidgetHint.getInstance(this).widget = swMenu;
			
			if(event.localY < 0){
				swMenu.dispatchEvent(event.clone());
			}
			
			super.onMouseOver(event);
			updateLayout();
		}
		
		override protected function onMouseOut(event:MouseEvent):void{
			WidgetHint.getInstance(this).hide();
			
			super.onMouseOut(event);
			updateLayout();
		}
		
		override protected function onMouseClick(event:MouseEvent):void{
			if(event.localY < 0){
				swMenu.dispatchEvent(event.clone());
				return;
			}
		}
		
		private function updateLayout():void{
			width = currentFace.width;
			height = currentFace.height;
			
			//measure();
		}
	}
}