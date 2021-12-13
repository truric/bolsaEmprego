class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
