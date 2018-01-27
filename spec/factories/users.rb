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
    phone "12345678901"
    ssn 1234
    company "ABC Comp"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'foobar'
    password_confirmation 'foobar'
    phone "12345678901"
    ssn 1234
    company "ABC Comp"
  end

  factory :non_authorized_user, class: "User" do
    first_name 'Non`'
    last_name 'Authorized'
    email { generate :email }
    password 'foobar'
    password_confirmation 'foobar'
    phone "12345678901"
    ssn 1234
    company "ABC Comp"
  end
end
