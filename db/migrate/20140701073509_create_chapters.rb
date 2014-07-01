class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
    	t.integer :user_id
    	t.string :chapter_name

      t.timestamps
    end
  end
end
