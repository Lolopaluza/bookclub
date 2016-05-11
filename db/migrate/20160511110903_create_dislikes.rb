class CreateDislikes < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
      t.string :dislikeable_type
      t.integer :dislikeable_id
      t.integer :user_id
      t.integer :dislike

      t.timestamps null: false
    end
  end
end
