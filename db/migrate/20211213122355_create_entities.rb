class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :description
      t.string :industry
      t.string :address
      t.string :county
      t.string :phone
      t.integer :fax
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
