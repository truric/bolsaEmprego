class AddActiveToJobOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :job_offers, :active, :boolean
  end
end
