Pod::Spec.new do |s|
#名称
s.name = 'JJExtension'
#版本号
s.version = '0.0.1'
#支持平台
s.platform = :ios, '7.0'
#简介
s.summary = '一个很好用的类别，类扩展'
#主页
s.homepage = 'https://github.com/andyfangjunjie/JJExtension'
#许可证
s.license = 'MIT'
#作者
s.author = { 'andyfangjunjie' => 'andyfangjunjie@163.com' }
#项目地址
s.source = {:git => 'https://github.com/andyfangjunjie/JJExtension.git', :tag => s.version}
#资源文件
s.source_files = 'JJExtension/**/*.{h,m}'
#是否支持ARC
s.requires_arc = true
#项目中用到库，多个用英文逗号隔开
s.frameworks  = 'UIKit', 'Foundation'
#依赖库，可指定版本，
s.dependency 'Masonry', '~> 1.0.2'
end