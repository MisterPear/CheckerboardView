Pod::Spec.new do |s|
  s.name             = 'CheckerboardView'
  s.version          = '1.0.0'
  s.summary          = 'A simple and customizable Checkerboard !'
  s.description      = <<-DESC
A simple view for customize your UI with a nice checkerboard !
                       DESC

  s.homepage         = 'https://github.com/MisterPear/CheckerboardView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Patryk Gruszka' => 'misterpear.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/MisterPear/CheckerboardView.git', :tag => "1.0.0" }
  s.ios.deployment_target = '8.0'
  s.source_files = 'CheckerboardView/Classes/**/*'
end
