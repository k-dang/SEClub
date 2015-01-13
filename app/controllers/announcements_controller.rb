class AnnouncementsController < ApplicationController
	def index
		@announcements = Announcement.all
		
		@user = User
	end
	
	def new
		@announcements = Announcement.new


	end
	
	def destroy
		@announcements = Announcement.find(params[:id])
		@announcements.destroy
		
		redirect_to dashboard_path
	end
	def create
		@announcements = Announcement.new(announcements_params)
		@announcements.user_id = current_user.id
		if @announcements.save
			redirect_to @announcements
		else
			render 'something broke: announcements_controller'
		end
	end
	
	def edit
		@announcements = Announcement.find(params[:id])
	end
		
	def show
		@announcements = Announcement.find(params[:id])
		@author = User.find(@announcements.user_id)
	end
	
	def update
		@announcements = Announcement.find(params[:id])
		@announcements.slug = nil
		if @announcements.update(announcements_params)
			redirect_to @announcements
		else
			render 'edit'
		end
	end

	private
		# Never trust parameters from the scary internet, only allow the white list through.
		def announcements_params
		  params.require(:announcement).permit(:title,:body)
		end

end
