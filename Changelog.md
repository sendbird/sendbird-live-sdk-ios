# Change Log

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
