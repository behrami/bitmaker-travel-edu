class User < ApplicationRecord
  has_secure_password

  has_many :favourites
  has_many :hotels, through: :favourites

  validates :user_name, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :user_name, presence: true
  validates :password, length: {minimum: 4}
  validates :password_confirmation, presence: true 
  # consider things that must be included--symbols, capital letters, numbers
  # validates :password, :with => /^[a-zA-Z0-9]+$/i

end
