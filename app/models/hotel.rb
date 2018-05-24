class Hotel < ApplicationRecord
  belongs_to :city

  has_many :favourites

  has_many :users, through: :favourites
end
