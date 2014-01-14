class RemoveDetailsFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :string
    remove_column :projects, :integer
  end

  def down
    add_column :projects, :integer, :string
    add_column :projects, :string, :string
  end
end
