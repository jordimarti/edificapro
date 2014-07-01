class ChargesController < ApplicationController

	def index

	end

	def course
		@purchase = Purchase.find(params[:purchase_id])
	end

	def buy

	end

	def charge

	end

end
