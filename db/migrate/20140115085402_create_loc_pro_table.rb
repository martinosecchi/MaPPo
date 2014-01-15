class CreateLocProTable < ActiveRecord::Migration
  def up
  	create_table :loc_proc, :id => false do |t|
  		t.references :locations
  		t.references :projects
  	end
  end

  def down
  	drop_tabe :loc_proc
  end
end
