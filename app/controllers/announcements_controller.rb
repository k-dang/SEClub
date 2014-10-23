class AnnouncementsController < ApplicationController
	def index
		@announcements = Announcement.all
		
		@user = User
	end
	
	def new
		@announcements = Announcement.new


	end
	
	def destroy
		@announcements = Announcements.find(params[:id])
		@announcements.destroy
		
		redirect_to dashboard_path
	end
	
	def create
		@announcements = Announcement.new(announcements_params)
		@announcements.user_id = current_user.id
		if @announcements.save
			redirect_to @announcements
		else
			render 'new'
		end
	end
	
	def edit
		@announcements = Announcements.find(params[:id])
	end
		
	def show
		@announcements = Announcements.find(params[:id])
		impressionist(@announcements)
		@author = User.find(@announcements.user_id)


		@imageString = @typeArray[@announcements.announcementstype][0]
	end
	def update
		@announcements = Announcements.find(params[:id])
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
		  params.require(:announcements).permit(:title, :body)
		end

end
