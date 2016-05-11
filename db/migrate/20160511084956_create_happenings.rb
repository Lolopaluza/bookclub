class CreateHappenings < ActiveRecord::Migration
  def change
    create_table :happenings do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
