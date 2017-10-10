class AddFieldsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :notes, :text
    add_column :people, :located, :boolean
  end
end
