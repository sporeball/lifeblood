# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "lifeblood"
  spec.version       = "0.1.0"
  spec.authors       = ["sporeball"]
  spec.email         = ["sporeballdev@gmail.com"]

  spec.summary       = "hyperfocused Jekyll theme for documentation"
  spec.homepage      = "https://github.com/sporeball/lifeblood"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
