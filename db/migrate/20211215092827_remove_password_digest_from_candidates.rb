class RemovePasswordDigestFromCandidates < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :password_digest, :string
  end
end
