module OnixMetagem
  class InstallGenerator < Rails::Generators::NamedBase
    desc "Install Onix Metagem assets"

    source_root File.expand_path('../templates', __FILE__)

    def copy_theme_files
      copy_file "theme.css.scss", "vendor/assets/stylesheets/theme.css.scss"
      copy_file "theme.js.coffee", "vendor/assets/javascripts/theme.js.coffee"
    end
  end
end
