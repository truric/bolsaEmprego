class RemovePasswordDigestFromEntities < ActiveRecord::Migration[5.2]
  def change
    remove_column :entities, :password_digest, :string
  end
end
