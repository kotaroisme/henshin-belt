# frozen_string_literal: true

module HenshinBelt
  module Errors
    class InvalidToken < StandardError
      def initialize(msg = 'Invalid token')
        @code = 401
        super
      end
      attr_reader :code
    end
  end
end
