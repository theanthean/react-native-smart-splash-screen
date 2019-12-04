require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-smart-splash-screen"
  s.version      = package['version']
  s.summary      = "React Native Smart Splash Screen component for Android and iOS"

  s.authors      = { "theanthean" => "thean@wtech.software" }
  s.homepage     = "https://github.com/theanthean/react-native-smart-splash-screen"
  s.license      = "MIT"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/theanthean/react-native-smart-splash-screen" }
  s.source_files  = "ios/RCTSplashScreen/RCTSplashScreen/RCTSplashScreen.{h,m}"

  s.dependency 'React'
end