class RemoveCompanyFromJobOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_offers, :company, :string
  end
end
