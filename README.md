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

GTrack Plugin
---------------
You can add Google Analytics support in Strobe Media Playback.
1st. Just add this config lines before player params:

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
2nd. Enable GTrack plugin & pass this params to it:
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
