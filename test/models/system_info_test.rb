require 'test_helper'

class SystemInfoTest < ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  test "#name" do
    it = create(:system_info).name
    assert_instance_of String, it
  end

end
