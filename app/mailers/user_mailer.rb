class UserMailer < ActionMailer::Base
  default from: "no-reply@edificapro.com"

  #Això s'ha de fer! És l'exemple del llibre i s'ha de modificar!!!
  def contact_email(contact)
		@contact = contact
		mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject =>
		"Website Contact")
	end
end
