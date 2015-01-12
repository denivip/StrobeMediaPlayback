package org.osmf.player.chrome.widgets
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	
	import org.osmf.player.chrome.assets.AssetsManager;

	public class SlideHintWidget extends Widget
	{
		private static const ZERO_POINT:Point = new Point();
		
		public static var isReady:Boolean = false;
		public static function applyParams(params:Object):void{
			if(params == null)
				return;
			
			prevW = params['width'];
			prevH = params['height'];
			slidesSrcURL = params['src'];
			totalSlides = params['total'];
			slidesPos = params['slidePos'];
			
			isReady = true;
		}
		
		private static var prevW:int = 160;
		private static var prevH:int = 68;
		private static var prevInterval:int = 30; // 30 secs between slides
		private static var totalSlides:int;
		private static var slidesPos:Number = 56;
		
		private static var slidesSrcURL:String;
		
		private var slidesSrc:BitmapData;
		
		private var _currSlide:Bitmap;
		private var _frameRect:Rectangle;
		
		private var _isReady2:Boolean = false;
		
		public function SlideHintWidget()
		{
			super();
			
			if(slidesSrcURL){
				var loader:Loader = new Loader();
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function(e:Event):void{
					slidesSrc = (LoaderInfo(e.target).content as Bitmap).bitmapData;
				});
				loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, function(e:IOErrorEvent):void{
					trace('slides load error!');
				});
				loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, function(e:SecurityErrorEvent):void{
					trace('slides security error!');
				});
				var lc:LoaderContext = new LoaderContext();
				lc.checkPolicyFile = true;
				loader.load(new URLRequest(slidesSrcURL), lc);
			}
		}
		
		public function get isReady2():Boolean{
			return _isReady2;
		}
		
		public function set duration(duration:Number):void{
			prevInterval = duration/totalSlides;
			_isReady2 = true;
		}
		
		override public function configure(xml:XML, assetManager:AssetsManager):void{
			super.configure(xml, assetManager);
			
			_currSlide = new Bitmap(new BitmapData(prevW, prevH));
			_currSlide.y -= slidesPos;
			_frameRect = new Rectangle(0, 0, prevW, prevH);
			
			addChild(_currSlide);
		}
		
		public function set currentTime(time:Number):void{
			if(slidesSrc == null)
				return;
			var img_x:Number = 0;
			var img_y:Number = 0;
			var m_width:int = slidesSrc.width;
			
			var x_ind:int = int(time/prevInterval);
			img_x = x_ind * prevW;
			if(img_x >= m_width){
				var y_ind:int = int(img_x / m_width);
				img_y = y_ind * prevH;
				img_x = img_x - (y_ind * m_width) - prevW;
			}
			
			_frameRect.x = img_x;
			_frameRect.y = img_y;
			_currSlide.bitmapData.copyPixels(slidesSrc, _frameRect, ZERO_POINT);
		}
	}
}