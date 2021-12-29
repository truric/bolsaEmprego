class RemoveActiveFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :active, :boolean
  end
end
