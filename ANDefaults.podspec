Pod::Spec.new do |s|
    s.name = 'ANDefaults'
    s.version = '1.3.2'
    s.license = 'MIT'
    s.summary = 'ANDefaults'
    s.homepage = 'https://github.com/anotheren/ANDefaults'
    s.authors = {
        'anotheren' => 'liudong.edward@gmail.com',
    }
    s.source = { :git => 'https://github.com/anotheren/ANDefaults.git', :tag => s.version }
    s.ios.deployment_target = '10.0'
    s.swift_versions = ['5.0', '5.1']
    s.source_files = 'Sources/**/*.swift'
    s.frameworks = 'Foundation'
    s.dependency 'SwiftyBeaver' '1.7.1'
  end
