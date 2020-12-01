class ContactUsController < ApplicationController
	def index
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.valid? && ContactMailer.contact_us(@contact).deliver
			redirect_to contact_us_path
		else
			render :index
		end
	end

	private

	def contact_params
		params.require(:contact).permit(
			:name,
			:email,
			:number,
			:website,
			:project_description,
			:last_name
		)
	end
end
