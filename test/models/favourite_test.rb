require 'test_helper'

class FavouriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_that_favourite_can_be_created
    behram = create(:user)
    country = create(:country)
    city = create(:city)
    hotel = create(:hotel)

    favourite = build(:favourite, user_id: behram.id, hotel_id: hotel.id)
    assert favourite.valid?
    favourite.save
    assert_equal(1, favourite.user_id)
  end

  def test_associations_between_users_and_hotels_through_favourites
    behram = create(:user)
    country = create(:country)
    city = create(:city)
    hotel = create(:hotel)


    favourite = build(:favourite, user_id: behram.id, hotel_id: hotel.id)
    favourite.save

    assert_equal(1, Favourite.last.hotel.id)
    assert_equal('Behram', Favourite.last.user.first_name)
    assert_equal(1, Favourite.last.hotel.users.first.id)
  end
end
