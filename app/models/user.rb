class User < ActiveRecord::Base
  def self.create_with_meetup(auth)
    user = create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.update_with_omniauth(auth)
    end
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
