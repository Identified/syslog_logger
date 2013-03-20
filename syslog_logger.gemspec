# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'syslog/logger/version'

Gem::Specification.new do |spec|
  spec.name          = "syslog_logger"
  spec.version       = Syslog::Logger::VERSION
  spec.authors       = ["Kevin Tham, Aaron Patterson, Eric Hodel"]
  spec.email         = ["kevin@identified.com"]
  spec.description   = %q{A Logger replacement that logs to syslog}
  spec.summary       = %q{Syslog::Logger is a drop-in replacement for the standard ruby Logger}
  spec.homepage      = "https://github.com/Identified/syslog_logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
