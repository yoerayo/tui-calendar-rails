# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tui/calendar/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "tui-calendar-rails"
  spec.version       = Tui::Calendar::Rails::VERSION
  spec.authors       = ["Keith Starling"]
  spec.email         = ["keith@keithstarling.com"]

  spec.summary       = %q{Provides ToastUI's Calendar view}
  spec.homepage      = "https://github.com/yoerayo/tui-calendar-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
