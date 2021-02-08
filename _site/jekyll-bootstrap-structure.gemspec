# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-bootstrap-structure"
  spec.version       = "0.1.0"
  spec.authors       = ["sgpinkus"]
  spec.email         = ["sgpinkus@gmail.com"]
  spec.summary       = %q{ Write a short summary, because Rubygems requires one.}
  spec.homepage      = "https://nowhere.com"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }
  spec.add_runtime_dependency "jekyll", "~> 4"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "octopress-paginate"
  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake", "~> 12.3"
end
