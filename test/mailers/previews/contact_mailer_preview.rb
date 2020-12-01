class ContactMailerPreview < ActionMailer::Preview

# Preview this email at http://localhost:3000/rails/mailers/contact_mailer
  def contact_us
    contact = Contact.new(
      name: "User",
      email: "test@example.com",
      number: "+1123",
      website: "www.example.com",
      project_description: "Project description"
    )
    ContactMailer.contact_us(contact)
  end
end