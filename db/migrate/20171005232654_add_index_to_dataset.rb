class AddIndexToDataset < ActiveRecord::Migration[5.1]
  def change
    add_index :people, :dataset_id
  end
end
