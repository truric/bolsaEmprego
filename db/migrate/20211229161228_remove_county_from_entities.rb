class RemoveCountyFromEntities < ActiveRecord::Migration[5.2]
  def change
    remove_column :entities, :county, :string
  end
end
