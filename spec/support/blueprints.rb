require 'machinist/active_record'
require 'sham'

Sham.define do
  name     { Faker::Name.name }
  email    { Faker::Internet.email }
  uid      { Faker::Base.numerify '#######' }
  location { Faker::Address.city }
end

User.blueprint do
  provider { "meetup" }
  uid
  name
  image_url { "http://photos1.meetupstatic.com/photos/member/1/6/2/b/member_10451675.jpeg" }
  location
end