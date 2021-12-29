class RemoveCountyFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :county, :string
  end
end
