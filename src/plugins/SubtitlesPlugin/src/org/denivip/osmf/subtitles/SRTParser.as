package org.denivip.osmf.subtitles {
	
	public class SRTParser {
		
		private static const rxSubRip:RegExp = /^\s*\d+\s*$(?:\r?\n?)+^\s*([\d:,\.]+)\s*-->\s*([\d:,\.]+)\s*$(?:\r?\n?)+((?:.*(?:\r?\n?)?)*?)(?:\r\n|\r|\n|$)/gm;
		private static const rxTime:RegExp = /(\d+):(\d+):(\d+),(\d+)/;
		private static const rxText:RegExp = /^\s*(.*?)\s*$/s;
		
		public static function parse(data:String):SubtitlesVO {
			var subtitlesVO:SubtitlesVO = new SubtitlesVO();
			var blocks:Vector.<String> = Vector.<String>(data.split(rxSubRip));
			var start:Number, end:Number, text:String;
			
			for (var i:uint = 1, len:uint = blocks.length; i < len; i += 4) {
				start = parseTime(blocks[i]);
				end = parseTime(blocks[i + 1]);
				text = blocks[i + 2].replace(rxText, "$1");
				if (text.length) {
					subtitlesVO.addSubtitlesItem(new SubtitlesItemVO(start, end - start, text));
				}
			}
			subtitlesVO.sort();
			
			return subtitlesVO;
		}
		
		private static function parseTime(time:String):Number {
			var arr:Array = time.match(rxTime);
			return parseInt(arr[1]) * 3600
				+ parseInt(arr[2]) * 60
				+ parseInt(arr[3])
				+ parseInt(arr[4]) * .001;
		}
		
	}
	
}
