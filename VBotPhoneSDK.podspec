#
# Be sure to run `pod lib lint VBotPhoneSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VBotPhoneSDK'
  s.version          = '1.3.0'
  s.summary          = 'VBot SDK Library for iOS.'
  s.homepage         = 'https://vbot.vn'
  s.license          = 'GNU GPL v3'
  s.author           = { 'vbot' => 'vbot,vn' }

  s.source        = { :git => 'https://github.com/VBotDevTeam/VBotPhoneSDK.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.5'

  
  s.dependency 'VBotSIP', '1.2.0'
  
  s.vendored_frameworks = 'VBotPhoneSDK.framework'
  s.frameworks = 'CoreFoundation', 'AudioToolbox', 'AVFoundation', 'GLKit', 'CFNetwork',  'CoreMedia'

  s.xcconfig = { 'OTHER_SWIFT_FLAGS' => '-no-verify-emitted-module-interface',
      'ONLY_ACTIVE_ARCH' => 'NO',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited)',
      'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1'}
  
end
