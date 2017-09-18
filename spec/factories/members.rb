FactoryGirl.define do
  factory :member do
    name 'Geoff Hogan'
    email 'geoff@hogan.com'
    title 'CEO'
    category Member::CATEGORIES.shuffle.first
    description 'Since I was a kid I wanted to handle satellite imagery.'
  end
end
