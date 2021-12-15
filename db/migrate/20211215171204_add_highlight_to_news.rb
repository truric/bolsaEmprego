class AddHighlightToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :highlight, :boolean
  end
end
