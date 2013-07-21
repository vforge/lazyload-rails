$:.push File.expand_path("../lib", __FILE__)
require "lazyload-rails/version"

Gem::Specification.new do |gem|
  gem.name = "lazyload-rails"
  gem.version = Lazyload::Rails::VERSION
  gem.summary = "jQuery Lazy Load for Rails image_tag helpers"
  gem.description = "lazyload-rails project integrates jQuery Lazy Load Plugin for Rails image_tag helpers"
  gem.license = "MIT"

  gem.files = Dir["README.md", "MIT-LICENSE", "lib/**/*.rb"]

  gem.add_dependency "nokogiri", "~> 1.5"
  gem.add_development_dependency "actionpack", ">= 3.1"

  gem.author = "Bartosz Bentkowski"
  gem.email  = "bartosz.bentkowski@gmail.com"
  gem.homepage = "https://github.com/vforge/lazyload-rails"
end
