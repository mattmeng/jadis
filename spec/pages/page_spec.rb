require 'spec_helper'
require 'jadis/pages/page'

describe Jadis::Pages::Page do
  # let( :content ) { <<-eol
  #
  # eol }
  subject { Jadis::Pages::Page.new(
    content: 'content',
    route: 'route',
    original_extension: 'original_extension'
  ) }

  it( :content ) { is_expected.not_to be nil }
  it( :route ) { is_expected.not_to be nil }
  it( :original_extension ) { is_expected.not_to be nil }
end
