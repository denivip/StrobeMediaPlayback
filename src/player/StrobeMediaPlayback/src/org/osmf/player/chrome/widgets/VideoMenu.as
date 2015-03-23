package org.osmf.player.chrome.widgets
{
	import flash.display.BlendMode;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import org.denivip.osmf.events.AlternativeVideoEvent;
	import org.denivip.osmf.net.HLSStreamingResource;
	import org.denivip.osmf.traits.AlternativeVideoTrait;
	import org.osmf.media.MediaElement;
	import org.osmf.media.MediaPlayer;
	import org.osmf.net.StreamingItem;
	import org.osmf.player.chrome.assets.AssetsManager;
	import org.osmf.player.chrome.assets.FontAsset;
	import org.osmf.player.metadata.MediaMetadata;

	public class VideoMenu extends Widget
	{
		public static var menuConf:String = null;
		
		private var _videoStream:AlternativeVideoTrait;
		private var _player:MediaPlayer;
		
		private var _currStreams:Array = null;
		
		private var _clickArea:Sprite;
		
		private var _symbol:String = '>';
		
		private var text_color:uint = 0xcdcdcd;
		private var background_color:uint = 0x0; 
		private var background_opacity:Number = 0.5;
		private var selected_color:uint = 0x0000ff;
		private var selected_opacity:Number = 0.5;
		private var border_color:uint = 0xffffff;
		private var border_opacity:Number = 0.7;
		private var corner:Number = 6;
		private var font_size:int = 16;
		private var caption:String = 'Camera';
		
		public function VideoMenu()
		{
			super();
			mouseEnabled = true;
			_clickArea = new Sprite();
			addEventListener(MouseEvent.CLICK, selectStream);
			
			addChild(_clickArea);
		}
		
		override public function configure(xml:XML, assetManager:AssetsManager):void{
			super.configure(xml, assetManager);
			
			// apply config
			if(menuConf){
				try{
				var conf:Object = JSON.parse(menuConf);
				if(conf){
					if(conf.hasOwnProperty('text_color'))
						text_color = conf.text_color;
					if(conf.hasOwnProperty('background_color'))
						background_color = conf.background_color;
					if(conf.hasOwnProperty('background_opacity'))
						background_opacity = conf.background_opacity;
					if(conf.hasOwnProperty('border_color'))
						border_color = conf.border_color;
					if(conf.hasOwnProperty('border_opacity'))
						border_opacity = conf.border_opacity;
					if(conf.hasOwnProperty('selected_color'))
						selected_color = conf.selected_color;
					if(conf.hasOwnProperty('selected_opacity'))
						selected_opacity = conf.selected_opacity;
					if(conf.hasOwnProperty('pointer'))
						_symbol = conf.pointer;
					if(conf.hasOwnProperty('corner'))
						corner = conf.corner;
					if(conf.hasOwnProperty('font_size'))
						font_size = conf.font_size;
					if(conf.hasOwnProperty('video_caption'))
						caption = conf.quality_caption;
				}
				}catch(e:Error){}
			}
			
			
			measure();
		}
		
		override protected function get requiredTraits():Vector.<String>{
			return _requiredTraits;
		}
		
		override protected function processRequiredTraitsAvailable(element:MediaElement):void{
			_videoStream = element.getTrait(AlternativeVideoTrait.ALTERNATIVE_VIDEO) as AlternativeVideoTrait;
			_videoStream.addEventListener(AlternativeVideoEvent.VIDEO_SWITCHING_CHANGE, updateMenu);
			
			var md:MediaMetadata = element.metadata.getValue(MediaMetadata.ID) as MediaMetadata;
			_player = md.mediaPlayer;
			
			if(!_currStreams)
				createMenu();
			
			updateMenu();
		}
		
		override protected function processRequiredTraitsUnavailable(element:MediaElement):void{
			if(_videoStream){
				_videoStream.removeEventListener(AlternativeVideoTrait.ALTERNATIVE_VIDEO, updateMenu);
				_videoStream = null;
			}
			_currStreams = null;
			_player = null;
		}
		
		override protected function processMediaElementChange(oldMediaElement:MediaElement):void{
			//updateMenu();
		}
		
		protected function updateMenu(event:Event = null):void{
			if(_currStreams.length == 0) return;
			
			var lb:TextField;
			for each(lb in _currStreams){
				var txt:String = lb.text;
				if(txt.indexOf(_symbol) == 0){
					txt = txt.substr(1);
					txt = ' ' + txt;
					lb.text = txt;
				}
			}
			
			var curr:int = _videoStream.currentIndex;
			lb = TextField(_currStreams[curr]);
			var text:String = lb.text;
			text = text.substr(1);
			text = _symbol + text;
			lb.text = text;
		}
		
		protected function selectStream(event:MouseEvent):void{
			event.stopPropagation();
			
			var sY:int = this.mouseY;
			if(sY < _currStreams[0].y)
				return;
			
			_clickArea.graphics.clear();
			_clickArea.graphics.beginFill(background_color, background_opacity);
			_clickArea.graphics.lineStyle(1, border_color, border_opacity);
			_clickArea.graphics.drawRoundRect(0, 0, _clickArea.width+20, _clickArea.height+7, corner);
			_clickArea.graphics.endFill();
			_clickArea.graphics.lineStyle();
			
			var i:int;
			var lb:TextField;
			for(i = 0; i < _currStreams.length; i++){
				lb = TextField(_currStreams[i]);
				if(lb.y <= sY && (lb.y+lb.height) >= sY){
					break;
				}
			}
		
			_videoStream.switchTo(i);
			if(_player.canSeek && _player.canSeekTo(_player.currentTime)){
				trace('switch and seek!');
				_player.seek(_player.currentTime);
			}
		
			// change appearance
			_clickArea.graphics.beginFill(selected_color, selected_opacity);
			_clickArea.graphics.drawRect(1, lb.y+2, _clickArea.width-2, font_size+2);
			_clickArea.graphics.endFill();
		}
		
		private function createMenu(e:Event = null):void{
			var createTF:Function = function():TextField{
				var lb:TextField = new TextField();
				lb.defaultTextFormat = format;
				lb.embedFonts = true;
				lb.textColor = text_color;
				lb.autoSize = TextFieldAutoSize.LEFT;
				lb.antiAliasType = AntiAliasType.ADVANCED;
				lb.sharpness = 200;
				lb.thickness = 0;
				
				return lb;
			};
			
			_currStreams = [];
			var fontAsset:FontAsset = assetManager.getAsset('defaultFont') as FontAsset;
			var format:TextFormat = fontAsset ? fontAsset.format : new TextFormat();
			format.size = font_size;
			
			var streams:Vector.<StreamingItem> = HLSStreamingResource(media.resource).alternativeVideoStreamItems;
			if(streams && streams.length > 0){
				var yPos:int = 3;
				var mWidth:int = 0;
				var lb:TextField = createTF();
				lb.text = caption;//"Quality";
				lb.y = yPos;
				lb.x = 7;
				_clickArea.addChild(lb);
				yPos += lb.height;
				
				for(var i:int = 0; i < streams.length; i++){
					lb = createTF();
					lb.y = yPos;
					lb.x = 7;
					_clickArea.addChild(lb);
					_currStreams.push(lb);
					
					var stName:String = streams[i].info['label'];// + ' ' + sItems[i].bitrate.toString()+'kbps'
					
					lb.text = '  ' + stName;
					mWidth = Math.max(mWidth, lb.width+7);
					yPos += lb.height;
				}
			}
			measure();
			
			_clickArea.graphics.clear();
			_clickArea.graphics.beginFill(background_color, background_opacity);
			_clickArea.graphics.lineStyle(1, border_color, border_opacity);
			_clickArea.graphics.drawRoundRect(0, 0, mWidth+25, yPos+5, corner);
			_clickArea.graphics.endFill();
			_clickArea.graphics.lineStyle();
			
			if(_currStreams.length > 0){
				_clickArea.graphics.beginFill(selected_color, selected_opacity);
				_clickArea.graphics.drawRect(1, _currStreams[0].y+2, _clickArea.width-2, font_size+2);
				_clickArea.graphics.endFill();
			}
			this.height += 5;
		}
		
		private static const _requiredTraits:Vector.<String> = new Vector.<String>;
		_requiredTraits[0] = AlternativeVideoTrait.ALTERNATIVE_VIDEO;
	}
}