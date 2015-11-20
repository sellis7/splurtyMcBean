require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag" do
    quote = Quote.create(:author =>'Boomtown Rats', :saying => 'I don\'t like Mondays.')
    expected = 'BR#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual

    # puts quote.inspect
  end



end
