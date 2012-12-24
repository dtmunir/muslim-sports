require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email 'user@example.com'
    password 'safepass'
    confirmed_at Time.now
  end
end