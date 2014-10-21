# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'epics/version'

Gem::Specification.new do |spec|
  spec.name          = "epics"
  spec.version       = Epics::VERSION
  spec.authors       = ["Lars Brillert"]
  spec.email         = ["lars@railslove.com"]
  spec.summary       = %q{a ruby implementation of the EBICS protocol}
  spec.description   = %q{a ruby implementation of the EBICS protocol}
  spec.homepage      = "https://github.com/railslove/epics"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.post_install_message  = "\n\e[32m" + ("*" * 60) + "\n\e[0m"
  spec.post_install_message += "Thanks for using Epics - your epic EBICS client!\n"
  spec.post_install_message += "Epics provides a full production-tested implementation of the Electronic Banking Internet Communication Standard.\n"
  spec.post_install_message += "Railslove as the maintainer is commited to provide extensive developer tools to make integrating financial institutions fun and easy.\n"
  spec.post_install_message += "Please create an issue on github (railslove/epics) if anything does not work as expected. And contact team@railslove.com if you are looking for support with your integration.\n"
  spec.post_install_message += "\e[32m" + ("*" * 60) + "\n\e[0m"
  
  spec.add_dependency "nokogiri"
  spec.add_dependency "gyoku"
  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", ">= 1.6.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "equivalent-xml"
end
