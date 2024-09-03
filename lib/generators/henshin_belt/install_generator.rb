# frozen_string_literal: true

module HenshinBelt
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)

    def copy_initializer
      template 'initializer.rb', 'config/initializers/henshin_belt.rb'
    end
  end
end
