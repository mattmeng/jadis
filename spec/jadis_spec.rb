require 'spec_helper'

describe Jadis do
  let( :test_dir ) { create_test_dir }

  it 'has a version number' do
    expect( Jadis::VERSION ).not_to be nil
  end

  describe '#configure' do
    it 'creates a config object' do
      Jadis.configure( test_dir )
      expect( Jadis.config ).to be_a( Jadis::Config )
    end
  end

  describe '#generate_new_project' do
    # it 'fails if no name is provided' do
    #   expect {Jadis.}
    # end
  end
end
