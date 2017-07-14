Pod::Spec.new do |s|
s.name = 'JJExtension'
s.version = '0.0.1'
s.platform = :ios, '7.0'
s.summary = '一个很好用的类别，类扩展'
s.homepage = 'https://github.com/andyfangjunjie/JJExtension'
s.license = 'MIT'
s.author = { 'andyfangjunjie' => 'andyfangjunjie@163.com' }
s.source = {:git => 'https://github.com/andyfangjunjie/JJExtension.git', :tag => s.version}
s.source_files = 'JJExtension/**/*.{h,m}'
s.requires_arc = true
s.frameworks  = 'UIKit', 'Foundation'
s.dependency 'Masonry'
end