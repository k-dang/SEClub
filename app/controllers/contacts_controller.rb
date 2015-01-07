class ContactsController < ApplicationController
	def new
		# @contacts = Contact.find(:all)
	end

	def index
		@contacts = Contact.all
	end

	def create
		# render text: params[:contacts].inspect
		#save to instance variable the parameters passed in
		@contact = Contact.new(contact_params)
		#save to db
		if @contact.save
			redirect_to root_path, success: "Sent successfully!"
		else
			redirect_to root_path, error: "Message failed"
		end
	end

	def show
		@contact = Contact.find(params[:id])
	end

	private
	  def contact_params
	    params.require(:contact).permit(:title, :email, :body)
	  end


end