require "jadis/constants"
require "jadis/config"
require "jadis/exceptions"

module Jadis
  class << self
    attr_accessor :config
  end

  def self.configure( base_dir )
    @config = Config.new( base_dir )
    yield if block_given?
  end

  def self.generate_new_project( path )
    unless path
      raise Exceptions::JadisArgumentError, 'Jadis project path not suppliced.'
    else
      raise Exceptions::JadisArgumentError, 'Jadis project path is not a directory.' unless File.directory?( path )
    end
  end
end
