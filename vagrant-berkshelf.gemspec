# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-berkshelf/version'

Gem::Specification.new do |spec|
  spec.name    = 'vagrant-berkshelf'
  spec.version = VagrantPlugins::Berkshelf::VERSION
  spec.authors = [
    'Jamie Winsor',
    'Michael Ivey',
    'Seth Vargo',
  ]
  spec.email = [
    'jamie@vialstudios.com',
    'michael.ivey@riotgames.com',
    'sethvargo@gmail.com',
  ]
  spec.description = %q{A Vagrant plugin to add Berkshelf integration to the Chef provisioners}
  spec.summary     = spec.description
  spec.homepage    = 'https://berkshelf.com'
  spec.license     = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.2.0'

  spec.post_install_message = <<-EOH
The Vagrant Berkshelf plugin requires Berkshelf from the Chef Development Kit.
You can download the latest version of the Chef Development Kit from:

    https://downloads.chef.io/chef-dk/

Installing Berkshelf via other methods is not officially supported.
EOH

  spec.add_development_dependency 'spork', '~> 0.9'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rake', '< 11.0'
end
