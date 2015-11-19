require "onix_metagem/version"

module OnixMetagem

  def self.gem_path
    Pathname(File.realpath(__FILE__)).join('../..')
  end

  def self.gem_spec
    Gem::Specification::load(
      gem_path.join("onix_metagem.gemspec").to_s
    )
  end

  def self.load_paths
    gem_path.join('app/assets').each_child.to_a
  end

  def self.dependencies
    []
  end
  
  if defined?(Rails)
    class Engine < ::Rails::Engine
      # Rails -> use app/assets directory.

      assets = config.assets

      assets.paths << OnixMetagem.gem_path.join('app/assets')
      assets.precompile << /\.(?:svg|eot|woff|ttf|otf)$/
      assets.precompile += %w( theme.js respond.js html5shiv.js turbolinks.js )
      assets.precompile += %w( theme.css )
    end
  end

end
