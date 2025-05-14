# Change Log

## 1.3.0 (May 14, 2025)
* Updated iOS deployment target to 13.0

## 1.2.9 (Jan 22, 2025)
* Fixed to prevent re-initialization of SendbirdChat

## 1.2.8 (Oct 13, 2024)
* Fixed `ITMS-91065: Missing signature` issue when distributing the app to the App Store review

## 1.2.7 (Sep 23, 2024)
* Fixed issues depending on LiveSDK / ChatSDK initialization timing
  * ChannelDelegate in ChatSDK not working issue
  * disconnection issues
* Updated SendbirdChatSDK dependency's minimum version to 4.21.3

## 1.2.6 (Jun 17, 2024)
* Updated SendbirdChatSDK dependency's minimum version.

## 1.2.5 (Apr 4, 2024)
* Updated iOS deployment target to 12.0
* Updated Xcode version to 15.0
* Added PrivacyInfo.xcprivacy for Apple Privacy Manifest

## 1.2.4 (Mar 21, 2024)
- Improved WebRTC internal logging.

## 1.2.3 (Mar 8, 2024)
- Stability improvements. 

## 1.2.2 (Dec 18, 2023)
- Added `LiveEvent.setVideoRendererForLiveEvent` to add video renderer to a specific host. 

## 1.2.1 (Dec 8, 2023)
- Added `LiveEventDelegate.didHostVideoResolutionChange` to monitor changes in video resolution. 

## 1.2.0 (Dec 2, 2023)
- Added support for streaming with multiple hosts
    - Now, multiple hosts can stream in a live event simultaneously. 
    - `LiveEvent.hostType` has changed to `LiveEvent.type`
    - LiveEventType can have following values: `audioOnly` and `video`, indicating the live event type for audio-only streaming and video streaming, respectively. 
    - `LiveEventCreateParams.hostType` has changed to `LiveEventCreateParams.type`
    - `LiveEventQuery.hostTypes` has changed to `LiveEventQuery.types`
- Added event listeners for receiving connection
    - LiveEventDelegate.didDisconnect(liveEvent: LiveEvent, e: Error)
    - LiveEventDelegate.didReconnect(liveEvent: LiveEvent)
- The existing `didDisconnect` event is now renamed to `LiveEventDelegate.didExit(liveEvent: LiveEvent, e: Error)`

## 1.2.0-beta.1 (Nov 8, 2023)
- Added support for streaming with multiple hosts
    - Now, multiple hosts can stream in a live event simultaneously. 
    - `LiveEvent.hostType` has changed to `LiveEvent.type`
    - LiveEventType can have following values: `audioOnly` and `video`, indicating the live event type for audio-only streaming and video streaming, respectively. 
    - `LiveEventCreateParams.hostType` has changed to `LiveEventCreateParams.type`
    - `LiveEventQuery.hostTypes` has changed to `LiveEventQuery.types`
- Added event listeners for receiving connection
    - LiveEventDelegate.didDisconnect(liveEvent: LiveEvent, e: Error)
    - LiveEventDelegate.didReconnect(liveEvent: LiveEvent)
- The existing `didDisconnect` event is now renamed to `LiveEventDelegate.didExit(liveEvent: LiveEvent, e: Error)`

## 1.1.1 (Nov 3, 2023)
- Stability improvements.

## 1.1.0 (Sep 7, 2023)
### Sendbird Live SDK is now out of beta. 

### Introducing Audio Only Live Events. 
You can stream live events with audio only, without having to turn the video on. 
- Added `hostType` to `LiveEvent`
    - singleHost: live event in which one host can stream video and audio at a time. 
    - singleHostAudioOnly: live event in which one host can stream only audio at a time. 
    - When creating or retrieving a list of live events, you must specify the type of the live event by providing a `hostType` variable. 
- Added `hostType` to `LiveEvent.CreateParams`
- Added `hostTypes` to `LiveEventListQueryParams

### Breaking Changes
- `LiveEvent.didParticipantEnter` and `LiveEvent.didParticipantExit` have been removed due to the excessive number of events they triggered when numerous participants joined the live event
    - Instead, use `LiveEvent.didParticipantCountChanged` to track the change of participant counts in a live event. This event will not be called every time a new participant joins the live event. Instead, it will be called periodically depending on the total number of participants joining the live event.
- Now, initializing the Live SDK will initialize Sendbird Chat SDK, using the default `InitParams` defined in the Chat SDK. If you wish to change the initialization parameters of the Chat SDK, you must call `SendbirdChat.initialize` again after the Live SDK initialization. 

## 1.0.0-beta.15 (Aug 25, 2023)
- Stability improvements. 

## 1.0.0-beta.14 (Jul 24, 2023)
- Fix an issue where Host's media status won't update properly. 

## 1.0.0-beta.13 (June 5, 2023)
- Added bandwidth, resolution, availableBitrate to ConnectionMetrics for better information about the live event.

## v1.0.0-beta.12 (May 24, 2023)
- Added interfaces to set video quality constraints. 
    - Added `MediaOptions.videoQualityConstraints`
    - Added `LiveEvent.updateVideoQualityConstraints()`
- Added interfaces to get network statistics from ongoing live events. 
    - Added `LiveEvent.setConnectionQualityDelegate`
    - Added `ConnectionQualityDelegate.didConnectionQualityUpdate`

## v1.0.0-beta.11 (May 19, 2023)
- Improved stabilty.

## v1.0.0-beta.10 (May 9, 2023)
- Improve audio device management while watching or hosting a Live Event.

## v1.0.0-beta.9 (Apr 25, 2023)
- Stability improvements.

## v1.0.0-beta.8 (Mar 24, 2023)
- Stability improvements.
    
## v1.0.0-beta.7 (Mar 8, 2023)
- Introducing reactions in Live Event. You can now react to live events in real time for better user interactions. 
    - Added `LiveEvent.CreateParams.reactionKeys`
    - Added `LiveEvent.increaseReactionCount`
    - Added `LiveEventDelegate.didReactionCountUpdate`

## v1.0.0-beta.6 (Jan 9, 2023)
- Add interfaces to support streaming from RTMP. 

## v1.0.0-beta.5 (Dec 22, 2022)
- Add interfaces to support applying filters to camera feed using external video source. 

## v1.0.0-beta.4 (Nov 3, 2022)
- Improved stability. 

## v1.0.0-beta.3 (Oct 6, 2022)
- Added custom items to `LiveEvent`.
- Added `title` and `coverURL` to `LiveEvent`.
- Added `LiveEvent.updateLiveEventInfo`.
- Renamed `LiveEvent.Configuration` to `LiveEvent.CreateParams`.
- Added `SendbirdLive.getCachedLiveEvent`.

## v1.0.0-beta.2 (Sep 8, 2022)
- Fix build settings

## v1.0.0-beta (Jul 15, 2022)
- Initial beta release
