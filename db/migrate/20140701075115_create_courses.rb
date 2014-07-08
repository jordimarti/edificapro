class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :name
      t.string :instructor
    	t.text :description
    	t.string :image
    	t.integer :price
    	t.string :start_controller
    	t.string :start_action

      t.timestamps
    end
  end
end
