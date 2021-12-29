class RemoveEmailFromEntities < ActiveRecord::Migration[5.2]
  def change
    remove_column :entities, :email, :string
  end
end
