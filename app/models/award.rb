class Award < ActiveRecord::Base
  has_many :award_users
  has_many :users, :through => :award_users
end
