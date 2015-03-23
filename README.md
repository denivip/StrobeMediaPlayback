StrobeMediaPlayback
===================

The Flash video player which supports all iOS video player features.

The StrobeMediaPlayback video player is used in http://2gzr.com video app and maintained by the DENIVIP team. The main reason for this repository is to store the ready to use StrobeMediaPlayback with all plugins enabled, configured and optimized. Previously you would need hours to make everything work and sometimes you would have to go deep into the sources to integrate some plugins. That's over now.

This StrobeMediaPlayback configuration features:
* HLS video playback: VOD, Live, DVR
* Dynamic Bitrate Switching (video quality selection)
* Alternate audio tracks
* Scrubbar thumbnails
* Subtitles 
* VAST ads
* HLS Multi-angle video support (not multiquality at this moment)
* Dozens of other "basic" StrobeMediaPlayback features

Quick start
------------
In simplest case all you need is just
* include swfobject (https://code.google.com/p/swfobject/) library on your page:
```
<script type="text/javascript" src="lib/swfobject.js"></script>
```
* add place for player on the page:
```
<!-- your page code here -->
<div id="strobeplayer"></div>
<!-- another page code -->
```
* set src parameter with your video url and embed player:
```
<script>
var parameters = {
	src: "http://el-18.am.2gzr.com/53f775b91b8204531a90b95f.m3u8"
};

// Embed the player SWF:	            
swfobject.embedSWF(
		"StrobeMediaPlayback.swf" // swf
		, "strobeplayer" // your player place
		// player size
		, 640
		, 360
		, "10.1.0"
		, "expressInstall.swf"
		, parameters
		, {
	        allowFullScreen: "true",
	        wmode: "direct"
	    }
		, {
	        name: "StrobeMediaPlayback"
	    }
	);
</script>
```
Configuration
------------
You can see default params here:
* Basic options: http://help.adobe.com/en_US/FMPSMP/Dev/WS3fd35e178bb08cb3-49a02f129f1468bd6-7fff.html
* Advanced options: http://help.adobe.com/en_US/FMPSMP/Dev/WS3fd35e178bb08cb3-49a02f129f1468bd6-7ff9.html
* Bandwidth options: http://help.adobe.com/en_US/FMPSMP/Dev/WS3fd35e178bb08cb3-49a02f129f1468bd6-7ffa.html

JavaScript API
------------
You need get current player instance:
- add JSBridgeHandler function to flashvars:
```
var parameters = {
	src: "https://hls.spuul.com/debug/unprotected/apl-noaes/master.m3u8",
	... // other parameters
    javascriptCallbackFunction: "onJavaScriptBridgeCreated"
}
```
- declare this function
```
var player = null;
function onJavaScriptBridgeCreated(id){
	if(player == null){
		player = document.getElementById(id);
		// other actions
	}
}
```

API
You can use all methods/properties of MediaPlayer class as well as in AS3:
```
player.play();
```
But for properties you need add get/set prefix:
```
player.setSrc('<url_to_video>');
console.log(player.getSrc());
```

Also most of all playback events available in JS:
```
player.addEventListener('mediaPlayerStateChange', onMediaPlayerStateChange);
function onMediaPlayerStateChange(state){
	switch(state){
		case 'emptied': // ready
			//...
		break;
		case 'loadstart': // loading
			//...
		break;
		case 'play': // playing
			//...
		break;
		case 'pause': // paused
			//...
		break;
		case 'waiting': // buffering
			//...
		break;
	}
}

player.addEventListener('seekingChange', onSeeking);
function onSeeking(state){
	if(state == 'seeking'){
		// you can enable loading animation as example
		loader.show();
	}
	if(state == 'seeked'){
		loader.hide();
		// you can move external seekbar to actual player position
		seekBar.progress = player.getCurrentTime();
	}
}
```

Full list of available methods/events you can find in the JSAPI.md doc.


VAST Ads
------------
TODO

GTrack Plugin
---------------
You can add Google Analytics support in Strobe Media Playback.

* Just add this config lines before player params (and change params 'account' and 'url' to yours actual values):

```
var gTrack = '<value key="reTrackConfig" type="class" class="com.realeyes.osmf.plugins.tracking.google.config.RETrackConfig"> \
    <account>YOUR GOOGLE ANALYTIC ID HERE</account> \
    <url>http://example.com</url> \
    <event name="percentWatched" category="video" action="percentWatched"> \
        <marker percent="0" label="start" /> \
        <marker percent="25" label="25PercentView" /> \
        <marker percent="50" label="50PercentView" /> \
        <marker percent="75" label="75PercentView" /> \
    </event> \
    <event name="complete" category="video" action="complete" value="1" /> \
    <event name="pageView" /> \
    <updateInterval>250</updateInterval> \
</value>';
```
* Enable GTrack plugin & pass this params to it:
```
var parameters = {
	src: "https://hls.spuul.com/debug/unprotected/apl-noaes/master.m3u8",
	autoPlay: true,
    verbose: true,
    plugin_gtrack: "GTrackPlugin.swf",
    "gtrack_http://www.realeyes.com/osmf/plugins/tracking/google": escape(gTrack)
}
```

With this config you can track:
- loading player with src
- how many percent of video was viewed
- and video complete event.

If you want more parameters, you can check GTrackPlugin documentation: https://code.google.com/p/reops/wiki/GTrackPlugin

Subtitles
------------
How to add subtitles rendering to your video:

* Prepare subtitles params:
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
* Pass params to player:
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
Scrub thumbnails
------------------
You can add prewiev images on the scrub bar timeline:

* Just set scrub options:
```
var slides = JSON.stringify({
	src: "http://dozeu380nojz8.cloudfront.net/sprites/10213056-532281e060b4d.jpg", // source image with slides from top-left to bottom-right
	width: 160, // slide width
	height: 68, // slide height
	total: 105, // total slides on source pics (can be less then actual nuber, but don't set it to bigger values)
	slidePos: 56 // slides position (change it if you use custom player skin)
});
```

* Pass it to player:
```
var parameters = {
	src: "https://hls.spuul.com/debug/unprotected/apl-noaes/master.m3u8",
	autoPlay: true,
    verbose: true,
    scrubSlides: encodeURIComponent(slides), // our slides config
}
```
