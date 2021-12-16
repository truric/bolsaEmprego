class DropControllersTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :controllers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
