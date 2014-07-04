class UserMailer < ActionMailer::Base
  default from: "gestion@edificapro.com"

	def purchase_email(purchase)
		@course_details = Course.find(purchase.course_id)
		@user_details = User.find(purchase.user_id)
		mail(to: @user_details.email, from: "gestion@edificapro.com", :subject =>
		"Compra del curso")
	end

	def welcome_email(user)
		@user_details = User.find(user.id)
		mail(to: @user_details.email, from: "gestion@edificapro.com", :subject =>
		"Bienvenido a EdificaPRO")
	end
	
end
