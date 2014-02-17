class RenameStateFromProject < ActiveRecord::Migration
  def up
  	rename_column :locations, :state, :country
  end

  def down
  	rename_column :locations, :country, :state
  end
end
