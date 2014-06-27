FactoryGirl.define do
  factory :user do
    name     "Jayson Weslley"
    email    "jayson@example.com"
    password "testpassword"
    password_confirmation "testpassword"
  end
end