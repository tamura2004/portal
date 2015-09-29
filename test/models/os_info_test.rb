require 'test_helper'

class OsInfoTest < ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  test "should have name method" do
    assert_instance_of String, create(:os_info).name
  end
end
