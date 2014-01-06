class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.string :title
      t.string :title_orig_lang
      t.text :summary
      t.string :channel
      t.integer :amount
      t.string :implementer
      t.string :cluster
      t.string :npp
      t.string :status
      t.string :provinces
      t.date :start_date
      t.date :end_date
      t.text :objective
      t.text :results

      t.timestamps
    end
  end
end
