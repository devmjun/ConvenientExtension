Pod::Spec.new do |s|
  s.name                  = "ConvenientExtension"
  s.version               = "0.2.3"
  s.summary               = "Private Extension"

  s.homepage              = "https://github.com/devmjun/ConvenientExtension"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "Minjun Ju" => "dev.mjun@gmail.com" }

  
  s.source                = { :git => "https://github.com/devmjun/ConvenientExtension.git", 
                              :tag => s.version.to_s }
  s.source_files          = "Sources/**/*"
  s.exclude_files         = "Sources/**/*.plist"

  s.ios.deployment_target = "8.0"
  s.swift_version         = "4.2"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.2" }

end

