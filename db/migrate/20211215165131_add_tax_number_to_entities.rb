class AddTaxNumberToEntities < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :tax_number, :integer
  end
end
