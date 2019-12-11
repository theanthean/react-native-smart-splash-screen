require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = { 'Thean Thean' => 'thean@wtech.software' }
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/theanthean/react-native-smart-splash-screen" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end
