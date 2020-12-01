class ContactMailer < ApplicationMailer
  def contact_us(contact)
    @contact = contact

    options = {
      to: ENV["CONTACT_FORM_SEND_TO"],
      subject: "Website Inquiry"
    }

    mail(options.compact)
  end
end
