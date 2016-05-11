class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :likeable_type
      t.integer :likeable_id
      t.integer :user_id
      t.integer :like

      t.timestamps null: false
    end
  end
end
