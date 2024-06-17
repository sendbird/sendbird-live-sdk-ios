Pod::Spec.new do |s|
  s.name         = 'SendbirdLiveSDK'
  s.version      = "1.2.6"
  s.summary      = 'Sendbird Live iOS Framework'
  s.description  = 'Sendbird Live API turns a client app into a live streaming platform where users can broadcast themselves in real-time to their followers.'
  s.homepage     = 'https://sendbird.com'
  s.license      = { :type => 'Commercial', :file => 'SendbirdLiveSDK/LICENSE' }
  s.authors      = {
    'Minhyuk Kim' => 'minhyuk.kim@sendbird.com',
    'Sendbird' => 'sha.sdk_deployment@sendbird.com',
    'Damon Park' => 'damon.park@sendbird.com',
    'Jed Gyeong' => 'jed@sendbird.com',
    'Tez Park' => 'tez.park@sendbird.com',
    'Celine Moon' => 'celine.moon@sendbird.com',
    'Young Hwang' => 'young.hwang@sendbird.com'
  }
  s.source       = { :http => "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.2.6/SendbirdLiveSDK.zip", :sha1 => "111c56fa400b03b72edce8a0bc2107163219d76a" }
  s.requires_arc = true
  s.platform = :ios, '12.0'
  s.documentation_url = 'https://sendbird.com/docs/live/v1/ios/ref/index.html'
  s.ios.vendored_frameworks = 'SendbirdLiveSDK/SendbirdLiveSDK.xcframework'
  s.dependency "SendBirdWebRTC", "~> 1.8.1"
  s.dependency "SendbirdChatSDK", "> 4.11.0"
  s.ios.frameworks =  ["UIKit", "Foundation", "WebRTC", "AVKit", "MediaPlayer", "Network", "CoreTelephony", "VideoToolbox"]
  s.ios.library   = 'icucore'
end
