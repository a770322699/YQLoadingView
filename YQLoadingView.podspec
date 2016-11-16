

Pod::Spec.new do |s|

  s.name         = "YQLoadingView"
  s.version      = "0.0.2"
  s.summary      = "基于MBHUD封装的一个加载器。"
  s.homepage     = "https://github.com/a770322699/YQLoadingView"
  s.license      = "MIT"
  s.author             = { "YiQuan" => "770322699@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/a770322699/YQLoadingView.git", :tag => "#{s.version}" }
  s.requires_arc = true

  s.subspec 'Code' do |code|
    code.source_files = "YQLoadingView/Code/*"
    code.public_header_files = "YQLoadingView/Code/*.h"
    code.frameworks = "UIKit", "Foundation", "CoreGraphics"
  end

  s.subspec 'Resources' do |resources|
    resources.source_files = "YQLoadingView/Resources/*"
  end

end
