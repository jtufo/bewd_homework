class AddFieldsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :title, :string
    add_column :notes, :description, :text
  end
end
