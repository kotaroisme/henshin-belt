# frozen_string_literal: true

module HenshinBelt
  module Errors
    class ExpiredToken < StandardError
      def initialize(msg = 'Expired token')
        @code = 401
        super
      end
      attr_reader :code
    end
  end
end
