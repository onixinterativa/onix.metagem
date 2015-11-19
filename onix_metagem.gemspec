$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "onix_metagem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "onix_metagem"
  s.version     = OnixMetagem::VERSION
  s.authors     = ["Ivo Marcelo Leonardi Zaniolo"]
  s.email       = ["marcelo@onixinterativa.com.br"]
  s.homepage    = "http://onixinterativa.com.br"
  s.summary     = "Onix Meta Gem Some tools that we use every day"
  s.description = "Onix Meta Gem Some tools that we use every day"
  s.license     = "MIT"

  s.files = Dir["{app,lib/vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "coffee-rails", "~> 4.1.0"
  s.add_dependency "sass-rails"

  # Assets
  s.add_dependency "bootstrap-sass"
  s.add_dependency "handlebars_assets"

  s.add_dependency "rails-assets-adminlte"
  s.add_dependency "rails-assets-respond"
  s.add_dependency "rails-assets-html5shiv"
  s.add_dependency "rails-assets-pace"
  s.add_dependency "rails-assets-fullcalendar"
  s.add_dependency "rails-assets-modernizr"
  s.add_dependency "rails-assets-lodash"
  s.add_dependency "rails-assets-backbone"
  s.add_dependency "rails-assets-greensock"
  s.add_dependency "rails-assets-DataTables"
  s.add_dependency "rails-assets-slimScroll"
  s.add_dependency "rails-assets-fastclick"
  s.add_dependency "rails-assets-iCheck"
  s.add_dependency "rails-assets-toastr"
  s.add_dependency "rails-assets-ionicons"
  s.add_dependency "rails-assets-fontawesome", "4.3.0"
  s.add_dependency "rails-assets-selectize"
  s.add_dependency "rails-assets-numeraljs"
  s.add_dependency "rails-assets-moment"
  s.add_dependency "rails-assets-bootstrap3-datetimepicker"
  s.add_dependency "rails-assets-bootstrap-daterangepicker"
  s.add_dependency "rails-assets-bootstrap-datepicker"
  s.add_dependency "rails-assets-amcharts"
  s.add_dependency "rails-assets-jsuri"
  s.add_dependency "rails-assets-vanilla-masker"
  s.add_dependency "rails-assets-jquery.validate"
  s.add_dependency "rails-assets-shufflejs"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "better_errors"
  s.add_development_dependency "binding_of_caller"
  s.add_development_dependency "meta_request"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "quiet_assets"
  s.add_development_dependency "capistrano"

end
