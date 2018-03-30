Pod::Spec.new do |s|
  s.name         = "HZRoundLabel"
  s.version      = "0.0.2"
  s.summary      = "华卓组件化roundLabel"

  s.description  = <<-DESC
                      华卓组件化roundLabel的代码整理
                   DESC

  s.homepage     = "https://github.com/jihuaibin2017/HZRoundLabel"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "jihuaibin2015" => "15158863897@163.com" }


  s.platform     = :ios

  s.source       = { :git => "https://github.com/jihuaibin2017/HZRoundLabel.git", :tag => "0.0.2" }
  s.source_files  = "HZRoundLabel/**/*.{h,m}"
  s.requires_arc = true
end

