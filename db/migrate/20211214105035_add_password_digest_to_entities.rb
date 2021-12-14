class AddPasswordDigestToEntities < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :password_digest, :string
  end
end
