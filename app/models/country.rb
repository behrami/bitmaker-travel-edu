class Country < ApplicationRecord
  has_and_belongs_to_many :months
  has_many :cities
end
