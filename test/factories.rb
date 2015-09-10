FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "sample#{n}@gmail.com"
    end
    password 'password'
    password_confirmation 'password'
  end

  factory :place do
    name "Food"
    description "Great stuff"
    address "44 newhaven st, Beverly Hills CA, 90210"
    latitude(40.7127)
    longitude(-74.0059)
    association :user
  end
end
