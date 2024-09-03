# frozen_string_literal: true

require 'grape'
require_relative 'henshin_belt/version'

require 'henshin_belt/configuration'

require 'henshin_belt/oauth2'
require 'henshin_belt/extension'
require 'henshin_belt/helpers'

require 'henshin_belt/base_strategy'
require 'henshin_belt/auth_strategies/hub'
require 'henshin_belt/auth_methods'

require 'henshin_belt/errors/invalid_token'
require 'henshin_belt/errors/invalid_scope'
require 'henshin_belt/errors/expired_token'

module HenshinBelt
  extend HenshinBelt::Configuration
  define_setting :auth_strategy, 'hub'
  define_setting :resources, 'Models::Auth'
  define_setting :is_custom_scopes, false

  def self.config_resources
    resources
  end
end
