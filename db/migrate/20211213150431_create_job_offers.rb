class CreateJobOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_offers do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.string :company
      t.string :county
      t.string :industry
      t.string :contract
      t.float :salary

      t.timestamps
    end
  end
end
