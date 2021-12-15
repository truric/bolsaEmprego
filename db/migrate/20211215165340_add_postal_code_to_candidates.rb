class AddPostalCodeToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :postal_code, :integer
  end
end
