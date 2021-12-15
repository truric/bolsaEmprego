class AddActiveToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :active, :boolean
  end
end
