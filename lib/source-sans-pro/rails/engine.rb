# make sure the sass-rails gem is loaded
unless defined? Sass::Rails
  require 'sass-rails'
end

module SourceSansPro
  module Rails
    class Engine < ::Rails::Engine
    end
  end
end
