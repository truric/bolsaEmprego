class AddLocalToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :location, :string
  end
end
