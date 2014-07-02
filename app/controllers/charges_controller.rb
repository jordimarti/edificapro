class ChargesController < ApplicationController

	def index

	end

	def creditcard
		@purchase = Purchase.find(params[:purchase_id])
		@course_details = Course.find(@purchase.course_id)
	end

	def pay
		@purchase = Purchase.find(params[:purchase_id])
		@course_details = Course.find(@purchase.course_id)
		purchase_description = 'EdificaPRO purchase n: ' + @purchase.id.to_s
		# Get the credit card details submitted by the form
		token = params[:stripeToken]

		# Create the charge on Stripe's servers - this will charge the user's card
		begin
		  charge = Stripe::Charge.create(
		    :amount => @course_details.price, # amount in cents, again
		    :currency => "eur",
		    :card => token,
		    :description => purchase_description
		  )
		rescue Stripe::CardError => e
		  # The card has been declined
		  flash[:error] = e.message
	  	redirect_to action: 'creditcard'
		end

		@purchase.paid = 't'
		
		if @purchase.update_attributes(@purchase.attributes)
      flash[:notice] = "La compra se ha realizado correctamente."
      UserMailer.purchase_email(@purchase).deliver
    else
    	flash[:error] = "La compra no se ha realizado."
    end
	end

	def charge

	end

end
