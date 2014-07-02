class PurchasesController < ApplicationController
  def new
  	@course_details = Course.find(params[:id])
  end

  def create
		@purchase = Purchase.new(purchase_params)
		@purchase.user_id = current_user.id
		if @purchase.save
			redirect_to(:controller => 'charges', :action => 'creditcard', :purchase_id => @purchase.id)
		else
			render('new')
		end
	end

	private
    def purchase_params
      params.require(:purchase).permit(:user_id, :course_id, :first_name, :last_name, :company_name, :address, :zip_code, :town, :province, :country, :nif, :terms_of_service)
    end
end
