class AddGmapsToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :gmaps_location, :string
  end
  def down
  	remove_column :projects, :gmaps_location
  end
end
