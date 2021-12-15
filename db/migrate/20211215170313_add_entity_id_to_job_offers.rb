class AddEntityIdToJobOffers < ActiveRecord::Migration[5.2]
  def change
    add_reference :job_offers, :entities, foreign_key: true
  end
end
