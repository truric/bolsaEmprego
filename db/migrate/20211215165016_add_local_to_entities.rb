class AddLocalToEntities < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :location, :string
  end
end
