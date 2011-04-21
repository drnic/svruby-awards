class AwardsController < ApplicationController
  def update
    user = User.find(params[:user_id])
    award = Award.find(params[:id])
    user.assign_award(award)
    redirect_to root_path, :notice => "Assigned award '#{award.name}'."
  end
end
