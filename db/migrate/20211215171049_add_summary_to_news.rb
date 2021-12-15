class AddSummaryToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :summary, :string
  end
end
