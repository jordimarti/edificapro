class C01Controller < ApplicationController
	before_filter :authenticate_user!

	def contexto
    #check_purchase
    #This part is to display the stat of the menu. Completed themes of this course are highlighted
    #@chapters = @this_user.chapters
    #If this theme has never been done by the user this registers it in the themes table
    #user_chapters = Chapter.where(:user_id => current_user.id)
    #if user_chapters.where(:chapter_name => 'c01t01').blank?
    #  @chapter = Chapter.new(:user_id => current_user.id, :chapter_name => 'c01t01')
    #  @chapter.save
    #end
  end

	def check_purchase
    @this_user = User.find(current_user.id)
    user_purchases = @this_user.purchases
    if user_purchases.where(:course_id => '1').blank?
      redirect_to controller: :library, action: :c01
    end
  end

  private
    def c01_params
      params.require(:c01).permit(:t01, :t02, :t03, :t04, :t05, :t06, :t07, :t08, :t09, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20)
    end

end
