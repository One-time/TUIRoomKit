#
# Be sure to run `pod lib lint TUIBarrage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'TUIBarrage'
  spec.version          = '1.0.0'
  spec.summary          = '针对企业会议、在线课堂、网络沙龙等多人音视频场景的弹幕挂件.'
  spec.homepage          = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors          = 'tencent video cloud'
  
  spec.source           = { :git => 'https://github.com/tencentyun/TUIRoomKit/tree/main/iOS/TUIBarrage', :tag => "v#{spec.version}" }
  
  spec.ios.deployment_target = '9.0'
  spec.requires_arc = true
  spec.static_framework = true
  spec.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  
  spec.source_files = 'Source/Localized/**/*.{h,m,mm}', 'Source/Model/**/*.{h,m,mm}', 'Source/Service/**/*.{h,m,mm}', 'Source/TUIExtension/**/*.{h,m,mm}', 'Source/UI/**/*.{h,m,mm}'
  spec.resource_bundles = {
    'TUIBarrageBundle' => ['Resources/Localized/**/*.strings','Resources/*.xcassets']
  }
  
  #  依赖内部库
  spec.dependency 'TUICore/ImSDK_Scenario'
  
  #  OC第三方库
  spec.dependency 'Masonry'
  spec.dependency 'SDWebImage'
  spec.dependency 'MJExtension'
end
