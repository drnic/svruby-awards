class AwardUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :award
end
