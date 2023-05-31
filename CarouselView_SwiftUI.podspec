
Pod::Spec.new do |s|
  s.name             = 'CarouselView_SwiftUI'
  s.version          = '0.0.1'
  s.summary          = 'A short description of CarouselView_SwiftUI.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jackiehu/CarouselView_SwiftUI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jackiehu' => '814030966@qq.com' }
  s.source           = { :git => 'https://github.com/jackiehu/CarouselView_SwiftUI.git', :tag => s.version.to_s }

  s.ios.deployment_target = "14.0" 
  s.swift_versions     = ['5.8','5.7','5.6','5.5','5.4','5.3','5.2','5.1','5.0']
  s.requires_arc = true
  s.frameworks   = "UIKit", "Foundation", "SwiftUI" #支持的框架
  
  s.source_files = 'Sources/CarouselView_SwiftUI/**/*'

end
