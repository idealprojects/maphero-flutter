Pod::Spec.new do |s|
    version = "0.0.4"

    s.name = 'maphero'
    s.version = version
    s.license = { :type => 'MIT', :file => "/Users/khalidtaha/Desktop/Doroob-Staff/maphero-native/platform/ios/LICENSE.md" }
    s.homepage = 'https://maphero.io/'
    s.authors = { 'MapHero' => '' }
    s.summary = 'Open source vector map solution for iOS with full styling capabilities.'
    s.platform = :ios
    s.source = {
        :http => "https://github.com/idealprojects/maphero-native/releases/download/0.0.3/MapHero_ios_device.framework.zip",
        :type => "zip"
    }
#     s.social_media_url  = 'https://mastodon.social/@maphero'
    s.ios.deployment_target = '12.0'
    s.ios.vendored_frameworks = "MapHero.xcframework"
end