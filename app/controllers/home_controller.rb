class HomeController < ApplicationController
  def index
    @members = User.all
  end

end
