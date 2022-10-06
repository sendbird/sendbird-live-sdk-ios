Pod::Spec.new do |s|
  s.name         = 'SendbirdLiveSDK'
  s.version      = "1.0.0-beta.3"
  s.summary      = 'Sendbird Live iOS Framework'
  s.description  = 'Sendbird Live API turns a client app into a live streaming platform where users can broadcast themselves in real-time to their followers.'
  s.homepage     = 'https://sendbird.com'
  s.license      = { :type => 'Commercial', :file => 'SendbirdLiveSDK/LICENSE' }
  s.authors      = {
    'Minhyuk Kim' => 'minhyuk.kim@sendbird.com',
    'Sendbird' => 'sha.sdk_deployment@sendbird.com',
    'Ernest Hong' => 'ernest.hong@sendbird.com'
  }
  s.source       = { :http => "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.0.0-beta.3/SendbirdLiveSDK.zip", :sha1 => "7fbda4c7efd9c75c7beef34704bf7838d79dbba9" }
  s.requires_arc = true
  s.platform = :ios, '11.0'
  s.documentation_url = 'https://sendbird.com/docs/live/v1/ios/ref/index.html'
  s.ios.vendored_frameworks = 'SendbirdLiveSDK/SendbirdLiveSDK.xcframework'
  s.dependency "SendBirdWebRTC", "~> 1.6.0"
  s.dependency "SendbirdChatSDK", "~> 4.0.14"
  s.ios.frameworks =  ["UIKit", "Foundation", "WebRTC", "AVKit", "MediaPlayer", "Network", "CoreTelephony", "VideoToolbox"]
  s.ios.library   = 'icucore'
end
