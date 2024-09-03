# frozen_string_literal: true

module HenshinBelt
  module Errors
    class InvalidScope < StandardError
      def initialize(msg = 'Invalid scope')
        @code = 401
        super
      end
      attr_reader :code
    end
  end
end
