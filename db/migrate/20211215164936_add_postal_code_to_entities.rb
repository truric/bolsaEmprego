class AddPostalCodeToEntities < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :postal_code, :integer
  end
end
