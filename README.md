StrobeMediaPlayback
===================

The Flash video player which supports all iOS video player features.

The StrobeMediaPlayback video player is used in http://2gzr.com app and maintained by DENIVIP team. The main reason for this repository is to store the ready to use StrobeMediaPlayback with all plugins enabled and configured. Previously you would neet hours to make everything work and sometimes you would have to go deep into sources to integrate some plugins. That's over now.

This StrobeMediaPlayback configuration features:
* HLS video playback: VOD, Live, DVR
* Dynamic Bitrate Switching (quality selection)
* Alternate audio tracks
* Scrubbar thumbnails
* Subtitles 
* VAST ads
* Dozens of other "basic" StrobeMediaPlayback features

Quick start
------------
Embed code

Configuration
------------
Params description

JavaScript API
------------
Methods exposed and callbacks

VAST Ads
------------
VAST

Subtitles
------------
How to add subtitles:

1st. Prepare subtitles params:
```
var subs = JSON.stringify({
subtitles: [
	{
		src: "The_Terminator_1984_roNy.srt", // subtitles source
		label: "Terminator", // label for menu
		language: "en" // language (service params)
	}
	// you can add more subtitles in array
],
// appearance config
config: {
	fontSize: 20,
	fontColor: 0xff0000,
	position: 20,
	outline: 0x00ff00
}
});
```
2nd. Pass params to player:
```
var parameters = {
	src: "https://hls.spuul.com/debug/unprotected/apl-noaes/master.m3u8",
	autoPlay: true,
    verbose: true,
    plugin_subs: "SubtitlesPlugin.swf", // enable Subtitles plugin (you can find it in the plugins folder)
	subs_namespace: "org.denivip.osmf.subtitles", // don't change this string!
	subs_src: encodeURIComponent(subs) // pass our params
}
```
