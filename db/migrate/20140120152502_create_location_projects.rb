class CreateLocationProjects < ActiveRecord::Migration
  def up
    create_table :location_projects do |t|
    	t.belongs_to :location
    	t.belongs_to :project
    end
  end
  def down
  	drop_table :loc_procs
  end
end
