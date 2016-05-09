$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'jadis'
require 'securerandom'

def create_test_dir
  begin
    base_dir = "#{RSpec.configuration.test_dir}/#{SecureRandom.hex}"
  end until not File.directory?( base_dir )
  FileUtils.mkdir( base_dir )
  return base_dir
end

RSpec.configure do |c|
  c.add_setting :test_dir

  c.before( :suite ) do
    begin
      c.test_dir = File.expand_path( "../../#{SecureRandom.hex}", __FILE__ )
    end until not File.directory?( c.test_dir )
    FileUtils.mkdir( c.test_dir )
  end

  c.after( :suite ) do
    FileUtils.rm_rf( c.test_dir )
  end
end
