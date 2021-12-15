class AddIdCardToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :id_card, :string
  end
end
