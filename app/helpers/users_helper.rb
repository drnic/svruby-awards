module UsersHelper
  def user_image(user)
    user.image_url.blank? ? '/images/unknown-person.png' : user.image_url
  end
end