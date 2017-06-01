Pod::Spec.new do |s|
  s.name = 'TvOS-SwiftTemplates'
  s.authors = { 'David Cordero' => 'dcorderoramirez@gmail.com'}
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'Swift equivalent to TVML templates'
  s.homepage = 'https://github.com/dcordero/TvOS-SwiftTemplates'
  s.source = { :git => 'https://github.com/dcordero/TvOS-SwiftTemplates.git', :tag => s.version }
  s.tvos.deployment_target = '10.0'
  s.source_files = 'TvOS-SwiftTemplates/Sources/*.swift'
end
