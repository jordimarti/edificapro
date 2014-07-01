class LibraryController < ApplicationController
  def index
  end

  def course
		@course_details = Course.find(params[:id])
  	if defined? current_user.id
    	@user_purchase = Purchase.where(user_id: current_user.id, course_id: params[:id])
    end
  end
  
end
