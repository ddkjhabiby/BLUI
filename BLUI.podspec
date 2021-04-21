.name         = "BLUI"
    s.version      = "1.0.0"
    s.ios.deployment_target = '9.0'
    s.summary      = "UI Framework""
    s.homepage     = "https://github.com/ddkjhabiby/BLUI"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "Simple" => "habttt@163.com" }
    s.source       = { :git => "https://github.com/ddkjhabiby/BLUI.git", :tag => s.version }
    #s.source_files  = "BLUI/*"
    s.frameworks = 'Foundation', 'UIKit'
    s.vendored_frameworks = 'BLUI.framework'
    s.requires_arc = true
    s.dependency='RxSwift','~> 5.1.0'
    s.dependency='RxCocoa','~> 5.1.0'
    s.dependency='HandyJSON','~> 5.0.2-beta'
    s.dependency='ReactorKit','~> 2.0.0'
    s.dependency='RxDataSources','~> 5.0.0'
    s.dependency='IQKeyboardManager','~> 6.4.0'
    s.dependency='WMPageController','~> 2.4.3'
    s.dependency='EmptyDataSet-Swift','~> 5.0.0'
    s.dependency='Kingfisher','~> 5.14.0'
    s.dependency='SwiftyUtils','~> 5.2.0'
    s.dependency='NSObject+Rx'
end
