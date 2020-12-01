class Contact < MailForm::Base
	attributes :name, validate: true
	attributes :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attributes :number, validate: true
	attributes :website, validate: true
	attributes :project_description, validate: true
	attributes :last_name, validate: :captcha

	def captcha
		self.errors.add(:last_name, "error") if last_name.present?
	end
end
