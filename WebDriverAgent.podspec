Pod::Spec.new do |s|
  s.name                    = "WebDriverAgent"
  s.version                 = "1.0.0"
  s.summary                 = "WebDriverAgent is a WebDriver server implementation for iOS that can be used to remote control iOS devices. "
  s.homepage                = "https://github.com/facebook/WebDriverAgent/"
  s.license                 = 'BSD'
  s.authors                 = 'facebook'
  s.source                  = { :git => "https://github.com/kif-framework/WebDriverAgent.git", :tag => "v#{ s.version.to_s }" }
  s.platform                = :ios, '8.0'
  s.frameworks              = 'CoreGraphics', 'QuartzCore', 'IOKit'
  s.default_subspec         = 'Core'
  s.requires_arc            = true

  s.pod_target_xcconfig     = { 'ENABLE_BITCODE' => 'NO' }

  s.subspec 'Core' do |core|
    core.source_files         = 'WebDriverAgentLib/**/*'
    core.public_header_files  = 'WebDriverAgentLib/**/*.h'
    core.requires_arc         = true
    core.dependency 'RoutingHTTPServer'
    core.resource = 'Resources/WebDriverAgent.bundle'
    core.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC', 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  end

end
