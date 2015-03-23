JavaScript Methods
-------------------

addEventListener(eventName:String, callbackFunctionName:String)	
addEventListeners(map:Object)	map is a key-value object, where key is eventName, and value is a callbackFunctionName
authenticate	for adobe drm
authenticateWithToken	for adobe drm
canSeekTo(time:Number):Boolean	
getAlternativeAudioItemAt(index:int):Object	return {streamName:String, info:Object}
getAlternativeAudioStreamSwitching():Boolean	
getAudioPan():Number	
getAutoDynamicStreamSwitch():Boolean	
getAutoPlay():Boolean	
getAutoRewind():Boolean	
getBitrateForDynamicStreamIndex(index:int):Number	
getBuffering():Boolean	
getBufferLength():Number	
getBufferTime():Number	
getBytesLoaded():Number	
getBytesLoadedUpdateInterval():Number	
getBytesTotal():Number	
getCanBuffer():Boolean	
getCanLoad():Boolean	
getCanPause():Boolean	
getCanPlay():Boolean	
getCanSeek():Boolean	
getCurrentAlternativeAudioStreamIndex():int	
getCurrentDynamicStreamIndex():int	
getCurrentTime():Number	
getCurrentTimeUpdateInterval():Number	
getDrmEndDate	for adobe drm
getDrmPeriod	for adobe drm
getDrmStartDate	for adobe drm
getDrmState	for adobe drm
getDuration():Number	
getDynamicStreamItemAt(index:uint):Object	return {streamName, bitrate, width, height}
getDynamicStreamSwitching():Boolean	
getHasAlternativeAudio():Boolean	
getHasAudio():Boolean	
getHasDRM	for adobe drm
getIsDVRRecording():Boolean	
getIsDynamicStream():Boolean	
getLoop():Boolean	
getMaxAllowedDynamicStreamIndex():int	
getMediaHeight():Number	
getMediaWidth():Number	
getMuted():Boolean	
getNumAlternativeAudioStreams():int	
getNumDynamicStreams():int	
getPaused():Boolean	
getPlaying():Boolean	
getScaleMode():String	
getSeeking():Boolean	
getState():String	
getStreamType():String	
getSubtitlesItemAt(index:int):Object	return {src, label, language}
getTemporal():Boolean	
getVolume():Number	0.0 … 1.0
load()	Load new media resource
pause()	
play2()	“play2” because javascript name conflict
seek(time:Number)	Seek to specific time
setAudioPan(value:Number)	-1.0 … 1.0
setAutoDynamicStreamSwitch(value:Boolean)	Auto switch stream video quality
setAutoPlay(value:Boolean)	
setAutoRewind(value:Boolean)	
setBufferTime(value:Number)	
setBytesLoadedUpdateInterval(value:Number=250)	
setCurrentTimeUpdateInterval(value:Number=250)	How often player will update current time, in milliseconds
setLoop(value:Boolean)	
setMaxAllowedDynamicStreamIndex(value:Number)	
setMediaResourceURL(url:String)	Set new source url and load it
setMuted(value:Boolean)	
setResourceMetadata(namespace:String, value:Object)	New values of resource metadata will apply on next load()
setScaleMode(value:String)	[ letterbox | stretch | zoom | none ]
setVolume(value:Number)	0.0 … 1.0
stop2()	“stop2” because javascript name conflict
switchAlternativeAudioIndex(index:int)	-1 is default audio stream (embeded in video stream)
switchDynamicStreamIndex(index:int)	


JavaScript events
-------------------

audioSwitchingChange	
autoSwitchChange	
bufferingChange	
bufferTimeChange	
bytesLoadedChange	only for progressive download
bytesTotalChange	only for progressive download
canBufferChange	
canPauseChange	
canPlayChange	
canSeekChange	
complete	End of video playback
currentTimeChange	
displayObjectChange	
drmStateChange	for adobe drm
durationChange	
hasAlternativeAudioChange	
hasAudioChange	
hasDisplayObjectChange	
isDynamicStreamChange	
isRecordingChange	for dvr
loadStateChange	
mediaError	Handle this event if you want custom behavior on playback error
mediaPlayerStateChange	
mediaSizeChange	
mutedChange	
numAlternativeAudioStreamsChange	
numDynamicStreamsChange	
onMetaData	NetStream onMetaData info
panChange	
playStateChange	
qosUpdate	Quality of Service info
seekingChange	
switchingChange	
temporalChange	
volumeChange

More detailed description you can find in the official Adobe documentation:
http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/org/osmf/media/MediaPlayer.html