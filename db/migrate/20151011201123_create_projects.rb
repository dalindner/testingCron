class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_title
      t.integer :project_id
      t.text :description
      t.string :url
      t.string :creater_id

      t.timestamps
    end
  end
end
