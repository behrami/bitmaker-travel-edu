require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_that_user_can_be_created

    # john = nil
    # john = create(:user, first_name: 'John', last_name:'Bertlik')
  
    behram=build(:user)
    assert_equal(behram.first_name, 'Behram')
  end
end
