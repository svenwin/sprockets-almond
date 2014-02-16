Gem::Specification.new do |s|
  s.name = 'sprockets-almond'
  s.version = '0.0.1'
  s.description = %q{Adds AMD support and Almond to the asset pipeline}
  s.summary = s.description

  s.files = Dir['README.md', 'lib/**/*.rb', 'assets/**/*.js']

  s.add_runtime_dependency 'sprockets', '~>2.9'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'rake'

  s.required_ruby_version = '>= 1.9.3'

  s.authors = ['Sven Winkler']
  s.email = ['svenwin@gmail.com']
  s.homepage = 'https://github.com/svenwin/sprockets-almond'
end
