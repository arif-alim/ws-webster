class ApplicationMailer < ActionMailer::Base
  default from: "Webster.ai <#{ENV["SEND_EMAILS_FROM"]}>"
  layout 'mailer'
end
