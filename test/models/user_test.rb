require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_that_user_can_be_created

    # john = nil
    # john = create(:user, first_name: 'John', last_name:'Bertlik')

    behram=create(:user)
    assert_equal(behram.first_name, 'Behram')
  end

  def test_that_username_is_unique
    #this should not be passing
    behram = create(:user, user_name: 'behram')
    sean = build(:user, user_name: 'behram')
    assert sean.invalid?
  end

  def test_that_password_has_more_than_4_characters
    behram = build(:user, password: 'abc', password_confirmation: 'abc')
    refute behram.valid?
  end

  def test_that_user_includes_password_confirmation_upon_signup
    behram = build(:user, password_confirmation: nil)
    refute behram.valid?
  end

  def test_that_password_matches_confirmation
    behram = build(:user, password_confirmation: 'invalidpass')
    refute behram.valid?
  end

  def test_that_user_includes_email_upon_signup
    behram = build(:user, email: nil)
    refute behram.valid?
  end

  def test_that_user_includes_first_name_upon_signup
    behram = build(:user, first_name: nil)
    refute behram.valid?
  end

  def test_that_user_includes_last_name_upon_signup
    behram = build(:user, last_name: nil)
    refute behram.valid?
  end


end
