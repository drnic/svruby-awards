class SessionsController < ApplicationController
  def old_callback
    auth # Do what you want with the auth hash!
  end

  def callback
    if user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
      user.update_with_meetup(auth)
      user.save!
    else
      user = User.create_with_meetup(auth)
    end
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
  
  def failure
    raise auth.to_yaml
    redirect_to root_url, :error => "Failed to authenticate: #{params[:message]}"
  end
  
  def auth; request.env['omniauth.auth'] end
end