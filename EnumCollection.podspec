Pod::Spec.new do |s|
  s.name             = "EnumCollection"
  s.version          = "1.2.0"
  s.summary          = "An Extension for Swift Enum Type"
  s.description      = <<-DESC
                        EnumCollection is an Extension for Swift Enum Type.
                        DESC

  s.homepage         = "https://github.com/Meniny/EnumCollection"
  s.license          = 'MIT'
  s.author           = { "Elias Abel" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/EnumCollection.git", :tag => s.version.to_s }
  s.social_media_url = 'https://meniny.cn/'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'EnumCollection/**/*.{h,swift}'
  s.public_header_files = 'EnumCollection/**/*{.h}'
  s.frameworks = 'Foundation'
#s.dependency ""
end
