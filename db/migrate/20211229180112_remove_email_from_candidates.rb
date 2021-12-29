class RemoveEmailFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :email, :string
  end
end
