class CreateCenturies < ActiveRecord::Migration
  def change
    create_table :centuries do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
