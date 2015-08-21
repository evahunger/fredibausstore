class UserMailer < ActionMailer::Base
  default from: "hello@fredibaus.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email, 
            :to => 'eva.hunger@gmx.de', 
            :subject => "A new contact form message from #{name}")
  end

end