Pod::Spec.new do |s|
    s.name = 'AnyNetworkService'
    s.version = '0.1.0'
    s.license = 'MIT'
    s.summary = 'A Simple Network API Usage'
    s.homepage = 'https://github.com/anotheren/AnyNetworkService'
    s.authors = { 'anotheren' => 'liudong.edward@gmail.com' }
    s.source = { :git => 'https://github.com/anotheren/AnyNetworkService.git', :tag => s.version }
  
    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
  
    s.swift_versions = ['5.3']
  
    s.source_files = 'Sources/AnyNetworkService/**/*.swift'
  
    s.dependency 'Alamofire'
  end