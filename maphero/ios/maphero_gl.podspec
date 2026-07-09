Pod::Spec.new do |s|
  s.name             = 'maphero_gl'
  s.static_framework = true
  s.version          = '1.2.0'
  s.summary          = 'MapHero Flutter plugin'
  s.description      = <<-DESC
MapHero Flutter plugin.
                       DESC
  s.homepage         = 'https://maphero.io'
#   s.license          = { :file => '../LICENSE' }
  s.author           = { 'MapHero' => 'info@ipc.com.ps' }

  # Local source
  s.source           = { :path => '.' }

  # Flutter plugin sources
  s.source_files     = 'maphero_gl/Sources/maphero/**/*'

  # Use the local MapHero XCFramework vendored from the maphero-native 1.2.0 release
  # (https://github.com/idealprojects/maphero-native/releases/tag/1.2.0).
  s.vendored_frameworks = 'MapHero.xcframework'

  # Flutter dependency
#   s.dependency 'MapHero', '1.2.0'

#   s.public_header_files = 'maphero/Sources/maphero/**/*.{h}'

  s.dependency 'Flutter'

  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'
end
