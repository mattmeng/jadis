require 'nesty'

module Jadis
  module Exceptions
    class JadisError < StandardError
      include Nesty::NestedError
    end

    class JadisArgumentError < ArgumentError
      include Nesty::NestedError
    end

    class NotYetImplemented < JadisError; end
  end
end
