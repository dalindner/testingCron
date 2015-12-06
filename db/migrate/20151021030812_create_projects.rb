class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_title
  
      t.text :description
      t.text :process_model
      t.integer :user_id
     # t.string :url
     # t.string :creater_id
      t.integer :team_id
      t.boolean :finish
      t.integer :scoreModel1
      t.integer :scoreModel2
      t.integer :scoreModel3
      t.integer :scoreModel4
      t.integer :scoreModel5
      t.integer :scoreModel6


      t.timestamps
    end
  end
end