# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "data_migrate/version"

Gem::Specification.new do |s|
  s.name        = "salsify-data_migrate"
  s.version     = DataMigrate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Salsify, Inc']
  s.email       = ['engineering@salsify.com']
  s.homepage    = 'https://github.com/salsify/data-migrate'
  s.summary     = %q{Rake tasks to migrate data alongside schema changes.}
  s.description = %q{Rake tasks to migrate data alongside schema changes.}
  s.license     = "MIT"

  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'https://gems.salsify.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  s.add_dependency('rails', '>= 4.0', '< 5.1')
  s.add_development_dependency "appraisal"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-core"
  s.add_development_dependency "pry"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "timecop"


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.post_install_message = <<-POST_INSTALL_MESSAGE
#{"*" * 80}
data-migrate: --skip-schema-migration option is no longer available as of version 3.0.0
#{"*" * 80}
POST_INSTALL_MESSAGE
end
