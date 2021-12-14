class AddUserIdToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :user_id, :integer
    add_index :candidates, :user_id
  end
end
