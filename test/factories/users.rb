FactoryBot.define do
  factory :user do
    id 1
    first_name "Behram"
    last_name "I"
    user_name "behram"
    email "behram@gmail.com"
    password "password"
    password_confirmation "password"
  end
end
