class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :description
      t.string :industry
      t.boolean :employed
      t.string :grade
      t.string :qualification
      t.string :experience
      t.string :address
      t.string :county
      t.string :phone
      t.integer :fax
      t.string :email

      t.timestamps
    end
  end
end
