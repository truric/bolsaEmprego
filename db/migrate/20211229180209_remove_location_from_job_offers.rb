class RemoveLocationFromJobOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_offers, :location, :string
  end
end
