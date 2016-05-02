require 'yaml'
require 'jadis/exceptions'

module Jadis
  class Config
    attr_accessor :base_dir

    BaseDirNotValid = Class.new( Exceptions::JadisArgumentError )

    # Loads the settings from `.jadis` and creates a new configuration object.
    # Will yield to a given block to modify settings further, which will override
    # and defaults and options in the `.jadis` file.
    #
    # @param base_dir [String] The base directory that contains the Jadis project.
    # @yield [config] Passes the new Config object to the given block.
    def initialize( base_dir )
      raise BaseDirNotValid unless base_dir && Dir.exists?( base_dir )
      @base_dir = base_dir

      # TODO: Base directory will contain a configuration file that will change
      #       the settings of this object.

      yield self if block_given?
    end
  end
end
