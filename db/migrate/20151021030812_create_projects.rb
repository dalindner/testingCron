class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_title
      t.integer :project_id
      t.text :description
      t.string :url
      t.string :creater_id

      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.integer :answer5


      t.timestamps
    end
  end
end