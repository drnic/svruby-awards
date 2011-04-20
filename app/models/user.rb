class User < ActiveRecord::Base
  has_many :award_users
  has_many :awards, :through => :award_users
  
  def unachieved_awards
    Award.all - awards
  end
  
  def assign_award(award)
    self.award_users.create(:award => award)
  end
  
  def self.create_with_meetup(auth)
    user = create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.update_with_meetup(auth)
    end
    debugger
    award = Award.find_by_name("Created an account")
    user.award_users.create(:award => award)
    user
  end
  
  # Sets User attributes based on omniauth/meetup.com fields
  # NOTE: does not save the record
  def update_with_meetup(auth)
    self.name        = auth["user_info"]["name"]
    self.location    = auth["user_info"]["location"]
    self.image_url   = auth["user_info"]["image"]
    self.profile_url = auth["user_info"]["urls"]["profile"]
  end
end
