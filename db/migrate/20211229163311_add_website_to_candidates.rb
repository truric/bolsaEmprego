class AddWebsiteToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :website, :string
  end
end
