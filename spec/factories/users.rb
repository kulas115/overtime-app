FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :user do
    first_name 'Norville'
    last_name 'Rogers'
    email { generate :email }
    password 'foobar'
    password_confirmation 'foobar'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'foobar'
    password_confirmation 'foobar'
  end
end
