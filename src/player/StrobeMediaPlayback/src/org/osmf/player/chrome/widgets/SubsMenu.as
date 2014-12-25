package org.osmf.player.chrome.widgets
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import org.denivip.osmf.subtitles.SubtitlesEvent;
	import org.denivip.osmf.subtitles.SubtitlesSourceItem;
	import org.denivip.osmf.subtitles.SubtitlesTrait;
	import org.osmf.media.MediaElement;
	import org.osmf.player.chrome.assets.AssetsManager;
	import org.osmf.player.chrome.assets.FontAsset;

	public class SubsMenu extends Widget
	{
		private var _subsTrait:SubtitlesTrait;
		
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
		private var caption:String = 'Subtitles';
		
		public function SubsMenu()
		{
			super();
			mouseEnabled = true;
			_clickArea = new Sprite();
			addEventListener(MouseEvent.CLICK, selectStream);
			//addEventListener(MouseEvent.MOUSE_OVER, highlightItem);
			
			addChild(_clickArea);
		}
		
		override public function configure(xml:XML, assetManager:AssetsManager):void{
			super.configure(xml, assetManager);
			
			// apply config
			if(QualityMenu.menuConf){
				try{
					var conf:Object = JSON.parse(QualityMenu.menuConf);
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
						if(conf.hasOwnProperty('subs_caption'))
							caption = conf.subs_caption;
					}
				}catch(e:Error){}
			}
			
			measure();
		}
		
		override public function set media(value:MediaElement):void{
			super.media = value;
		}
		
		override protected function get requiredTraits():Vector.<String>{
			return _requiredTraits;
		}
		
		override protected function processRequiredTraitsAvailable(element:MediaElement):void{
			visible = true;
			
			_subsTrait = media ? media.getTrait(SubtitlesTrait.SUBTITLES) as SubtitlesTrait : null;
			if(_subsTrait)
				_subsTrait.addEventListener(SubtitlesEvent.SUBTITLES_SWITCHING_CHANGE, onSwitchChange);
			
			createMenu();
		}
		
		override protected function processRequiredTraitsUnavailable(element:MediaElement):void{
			if(_subsTrait){
				_subsTrait.removeEventListener(SubtitlesEvent.SUBTITLES_SWITCHING_CHANGE, onSwitchChange);
				_subsTrait = null;
			}
			
			visible = false;
		}
		
		protected function onSwitchChange(event:Event):void{
			var lb:TextField = TextField(_currStreams[_subsTrait.currentIndex+1]);
			
			if(!lb) return;
			
			_clickArea.graphics.clear();
			_clickArea.graphics.beginFill(background_color, background_opacity);
			_clickArea.graphics.lineStyle(1, border_color, border_opacity);
			_clickArea.graphics.drawRoundRect(0, 0, _clickArea.width+20, _clickArea.height+7, corner);
			_clickArea.graphics.endFill();
			_clickArea.graphics.lineStyle();
			
			// change appearance
			_clickArea.graphics.beginFill(selected_color, selected_opacity);
			_clickArea.graphics.drawRect(1, lb.y+2, _clickArea.width-2, font_size+2);
			_clickArea.graphics.endFill();
		}
		
		protected function selectStream(event:MouseEvent):void{
			event.stopPropagation();
			
			_clickArea.graphics.clear();
			_clickArea.graphics.beginFill(background_color, background_opacity);
			_clickArea.graphics.lineStyle(1, border_color, border_opacity);
			_clickArea.graphics.drawRoundRect(0, 0, _clickArea.width+20, _clickArea.height+7, corner);
			_clickArea.graphics.endFill();
			_clickArea.graphics.lineStyle();
			
			var sY:int = this.mouseY;
			var i:int;
			var lb:TextField;
			for(i = 0; i < _currStreams.length; i++){
				lb = TextField(_currStreams[i]);
				if(lb.y <= sY && (lb.y+lb.height) >= sY){
					break;
				}
			}
			
			_subsTrait.switchTo(i-1)
			
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
			
			var yPos:int = 3;
			var mWidth:int = 0;
			var lb:TextField = createTF();
			lb.text = caption;//"Subtitles";
			lb.y = yPos;
			lb.x = 7;
			_clickArea.addChild(lb);
			yPos += lb.height;
			
			lb = createTF();
			lb.y = yPos;
			lb.x = 7;
			lb.text = "  Off";
			_clickArea.addChild(lb);
			_currStreams.push(lb);
			yPos += lb.height;
			
			for(var i:int = 0; i < _subsTrait.numSubtitles; i++){
				var sub:SubtitlesSourceItem = _subsTrait.getItemForIndex(i);
				lb = createTF();
				lb.y = yPos;
				lb.x = 7;
				_clickArea.addChild(lb);
				_currStreams.push(lb);
				
				lb.text = '  ' + sub.label || sub.language;
				mWidth = Math.max(mWidth, lb.width);
				yPos += lb.height;
			}
			
			measure();
			
			_clickArea.graphics.clear();
			_clickArea.graphics.beginFill(background_color, background_opacity);
			_clickArea.graphics.lineStyle(1, border_color, border_opacity);
			_clickArea.graphics.drawRoundRect(0, 0, mWidth+25, yPos+5, corner);
			_clickArea.graphics.endFill();
			_clickArea.graphics.lineStyle();
			
			_clickArea.graphics.beginFill(selected_color, selected_opacity);
			_clickArea.graphics.drawRect(1, _currStreams[0].y+2, _clickArea.width-2, font_size+2);
			_clickArea.graphics.endFill();
			
			this.height += 5;
		}
		
		private static const _requiredTraits:Vector.<String> = new Vector.<String>;
		_requiredTraits[0] = SubtitlesTrait.SUBTITLES;
	}
}