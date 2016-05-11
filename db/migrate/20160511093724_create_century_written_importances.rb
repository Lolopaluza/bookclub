class CreateCenturyWrittenImportances < ActiveRecord::Migration
  def change
    create_join_table :centuries, :written_importances
  end
end
