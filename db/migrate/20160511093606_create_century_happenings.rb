class CreateCenturyHappenings < ActiveRecord::Migration
  def change
    create_join_table :centuries, :happenings
  end
end
