package org.osmf.player.chrome.widgets
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	import org.denivip.osmf.subtitles.SubtitlesEvent;
	import org.denivip.osmf.subtitles.SubtitlesMarker;
	import org.denivip.osmf.subtitles.SubtitlesPluginInfo;
	import org.denivip.osmf.subtitles.SubtitlesTrait;
	import org.osmf.events.MediaElementEvent;
	import org.osmf.events.PlayEvent;
	import org.osmf.events.SeekEvent;
	import org.osmf.events.TimelineMetadataEvent;
	import org.osmf.layout.LayoutTargetEvent;
	import org.osmf.media.MediaElement;
	import org.osmf.metadata.Metadata;
	import org.osmf.metadata.TimelineMetadata;
	import org.osmf.player.chrome.ChromeProvider;
	import org.osmf.traits.MediaTraitType;
	import org.osmf.traits.PlayState;
	import org.osmf.traits.PlayTrait;
	import org.osmf.traits.SeekTrait;
	import org.osmf.traits.TimeTrait;
	
	public class SubtitlesOverlay extends Widget
	{
		private var subsText:TextField;
		private var textF:TextFormat;
		
		private var _subsTrait:SubtitlesTrait;
		private var _timeTrait:TimeTrait;
		private var _playTrait:PlayTrait;
		private var _seekTrait:SeekTrait;
		
		private var _subsMetadata:TimelineMetadata;
		private var _currMarker:SubtitlesMarker;
		
		public function create(container:Sprite):void{
			
			addEventListener(LayoutTargetEvent.ADD_TO_LAYOUT_RENDERER, addedToLayout);
			
			super.configure(<default/>, ChromeProvider.getInstance().assetManager);
			
			var w:Number = 1024;
			var h:Number = 32;
			
			subsText = new TextField();
			subsText.x = 0;
			subsText.y = 0;
			subsText.width = w;
			subsText.height = h;
			subsText.text = '';
			subsText.multiline = true;
			subsText.wordWrap = true;
			
			textF = new TextFormat();
			textF.color = 0xDFDFDF;
			textF.font = "Open Sans";
			textF.size = 18;
			textF.align = TextFormatAlign.CENTER;
			subsText.setTextFormat(textF);
			
			var filter:GlowFilter = new GlowFilter(0x000000,1.0,2.0,2.0,10);
			filter.quality = BitmapFilterQuality.MEDIUM;
			subsText.filters = [filter];
			
			this.addChild(subsText);
		}
		
		protected function addedToLayout(event:LayoutTargetEvent):void{
			// resize text
			//subsText.width = event.layoutRenderer.
			event.layoutRenderer.container.addEventListener(Event.RESIZE, onParentResize);
		}
		
		private function onParentResize(e:Event):void{
			trace();
		}
		
		override protected function get requiredTraits():Vector.<String>{
			return _requiredTraits;
		}
		
		override protected function processMediaElementChange(oldMediaElement:MediaElement):void{
			if(oldMediaElement){
				if(_playTrait){
					_playTrait.removeEventListener(PlayEvent.PLAY_STATE_CHANGE, onPlayStateChange);
					_playTrait = null;
				}
				
				if(_seekTrait){
					_seekTrait.removeEventListener(SeekEvent.SEEKING_CHANGE, onSeekingChange);
					_seekTrait = null;
				}
				
				if(_subsTrait){
					_subsTrait.removeEventListener(SubtitlesEvent.SUBTITLES_SWITCHING_CHANGE, onSubsSwitchChange);
					_subsTrait = null;
				}
				_timeTrait = null;
				
				oldMediaElement.removeEventListener(MediaElementEvent.TRAIT_ADD, onTraitAdd);
				oldMediaElement.removeEventListener(MediaElementEvent.TRAIT_REMOVE, onTraitRemove);
				
				subsText.visible = false;
			}
			
			if(media){
				media.addEventListener(MediaElementEvent.TRAIT_ADD, onTraitAdd);
				media.addEventListener(MediaElementEvent.TRAIT_REMOVE, onTraitRemove);
				
				// config
				var subsMeta:Metadata = media.resource.getMetadataValue(SubtitlesPluginInfo.NAMESPACE) as Metadata;
				if(!subsMeta){
					visible = false;
					return;
				}
				var subsConf:String = subsMeta.getValue('src') as String;
				var conf:Object;
				if(subsConf && subsConf.length){
					try{
						conf = JSON.parse(subsConf);
						if('config' in conf){
							conf = conf.config;
							if(conf.hasOwnProperty('fontSize'))
								textF.size = conf.fontSize;
							if(conf.hasOwnProperty('fontColor'))
								textF.color = conf.fontColor;
							if(conf.hasOwnProperty('position'))
								this.layoutMetadata.bottom = conf.position;
							if(conf.hasOwnProperty('outline')){
								var filter:GlowFilter = subsText.filters[0];
								filter.color = conf.outline;
								subsText.filters = [filter];
							}
							
							subsText.setTextFormat(textF);
						}
					}catch(e:Error){}
				}
			}
		}
		
		override protected function processRequiredTraitsAvailable(element:MediaElement):void{
			_playTrait = element.getTrait(MediaTraitType.PLAY) as PlayTrait;
			if(_playTrait)
				_playTrait.addEventListener(PlayEvent.PLAY_STATE_CHANGE, onPlayStateChange);
			
			_seekTrait = element.getTrait(MediaTraitType.SEEK) as SeekTrait;
			if(_seekTrait)
				_seekTrait.addEventListener(SeekEvent.SEEKING_CHANGE, onSeekingChange);
			
			_subsTrait = element.getTrait(SubtitlesTrait.SUBTITLES) as SubtitlesTrait;
			if(_subsTrait){
				_subsTrait.addEventListener(SubtitlesEvent.SUBTITLES_SWITCHING_CHANGE, onSubsSwitchChange);
			}
			
			_timeTrait = element.getTrait(MediaTraitType.TIME) as TimeTrait;
			
			//this.visible = true;
		}
		
		override protected function processRequiredTraitsUnavailable(element:MediaElement):void{
			if(_playTrait){
				_playTrait.removeEventListener(PlayEvent.PLAY_STATE_CHANGE, onPlayStateChange);
				_playTrait = null;
			}
			
			if(_seekTrait){
				_seekTrait.removeEventListener(SeekEvent.SEEKING_CHANGE, onSeekingChange);
				_seekTrait = null;
			}
			
			if(_subsTrait){
				_subsTrait.removeEventListener(SubtitlesEvent.SUBTITLES_SWITCHING_CHANGE, onSubsSwitchChange);
				_subsTrait = null;
			}
			_timeTrait = null;
			
			subsText.visible = false;
		}
		
		private function onSubsSwitchChange(event:SubtitlesEvent):void {
			if (!_subsTrait) return;
			
			if (_subsMetadata) {
				_subsMetadata.removeEventListener(TimelineMetadataEvent.MARKER_TIME_REACHED, onMarkerStart);
				_subsMetadata.removeEventListener(TimelineMetadataEvent.MARKER_DURATION_REACHED, onMarkerEnd);
				_subsMetadata = null;
				_subsMetadata = null;
				subsText.visible = false;
			}
			
			if (event.switching) {
				subsText.visible = false;
			} else if (_subsTrait.currentIndex != -1) {
				_subsMetadata = _subsTrait.getItemForIndex(_subsTrait.currentIndex).subtitlesMetadata as TimelineMetadata;
				_subsMetadata.addEventListener(TimelineMetadataEvent.MARKER_TIME_REACHED, onMarkerStart);
				_subsMetadata.addEventListener(TimelineMetadataEvent.MARKER_DURATION_REACHED, onMarkerEnd);
				findCurrMarker();
			}
		}
		
		private function onMarkerStart(e:TimelineMetadataEvent):void{
			_currMarker = e.marker as SubtitlesMarker;
			subsText.visible = true;
			subsText.text = _currMarker.text;
			subsText.setTextFormat(textF);
		}
		
		private function onMarkerEnd(e:TimelineMetadataEvent):void{
			var tempMarker:SubtitlesMarker = e.marker as SubtitlesMarker;
			if(tempMarker == _currMarker){
				subsText.visible = false;
				_currMarker = null;
			}
		}
		
		private function onTraitAdd(e:MediaElementEvent):void{
			switch (e.traitType) {
				case MediaTraitType.PLAY:
					_playTrait = media.getTrait(MediaTraitType.PLAY) as PlayTrait;
					_playTrait.addEventListener(PlayEvent.PLAY_STATE_CHANGE, onPlayStateChange);
					break;
				case MediaTraitType.SEEK:
					_seekTrait = media.getTrait(MediaTraitType.SEEK) as SeekTrait;
					_seekTrait.addEventListener(SeekEvent.SEEKING_CHANGE, onSeekingChange);
					break;
				case MediaTraitType.TIME:
					_timeTrait = media.getTrait(MediaTraitType.TIME) as TimeTrait;
					break;
			}
		}
		
		private function onTraitRemove(e:MediaElementEvent):void{
			switch (e.traitType) {
				case MediaTraitType.PLAY:
					if(_playTrait) {
						_playTrait.removeEventListener(PlayEvent.PLAY_STATE_CHANGE, onPlayStateChange);
						_playTrait = null;
					}
					break;
				case MediaTraitType.SEEK:
					if(_seekTrait) {
						_seekTrait.removeEventListener(SeekEvent.SEEKING_CHANGE, onSeekingChange);
						_seekTrait = null;
					}
					break;
				case MediaTraitType.TIME:
					_timeTrait = null;
					break;
			}
		}
		
		private function onPlayStateChange(event:PlayEvent):void {
			if (!_subsTrait) return;
			if (event.playState == PlayState.PLAYING) {
				findCurrMarker();
			}
		}
		
		private function onSeekingChange(event:SeekEvent):void {
			if (!_subsTrait) return;
			if (!event.seeking) {
				findCurrMarker();
			}
		}
		
		private function findCurrMarker():void{
			if (!_subsMetadata || !_timeTrait) return;
			var time:Number = _timeTrait.currentTime;
			var marker:SubtitlesMarker;
			for (var i:uint = 0, len:uint = _subsMetadata.numMarkers; i < len; ++i) {
				marker = _subsMetadata.getMarkerAt(i) as SubtitlesMarker;
				if (marker && marker.time <= time && marker.time + marker.duration > time) {
					if (marker == _currMarker) return;
					_currMarker = marker;
					subsText.text = _currMarker.text;
					subsText.visible = true;
					return;
				}
			}
			_currMarker = null;
			subsText.visible = false;
		}
		
		private static const _requiredTraits:Vector.<String> = new Vector.<String>;
		_requiredTraits[0] = MediaTraitType.TIME;
		_requiredTraits[1] = SubtitlesTrait.SUBTITLES;
	}
}