require 'test_helper'

class MediumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_should_generate_medium_rss
  	get :index, :format => 'xml'
  	assert_response :success
  	# assert_xml_select 'channel item', count: Medium.count
  	# assert equal Medium.count, Medium.rss.scan(//).size
  end
end
