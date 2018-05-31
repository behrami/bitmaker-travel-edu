class Hotel < ApplicationRecord
  belongs_to :city

  has_many :favourites
  has_many :users, through: :favourites


  def address
    [formatted_address, name].compact.join(', ')
  end

  geocoded_by :address
  after_validation :geocode, :if => lambda{ |obj| obj.formatted_address_changed? && obj.name_changed? }


end
