class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
    	t.integer :user_id
    	t.integer :course_id
    	t.string :first_name
    	t.string :last_name
    	t.string :company_name
    	t.string :address
    	t.integer :zip_code
    	t.string :town
    	t.string :province
    	t.string :country
    	t.string :nif
      t.boolean :terms_of_service
      t.boolean :paid

      t.timestamps
    end
  end
end
