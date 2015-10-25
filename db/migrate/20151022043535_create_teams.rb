class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :title
      t.text :team_description 
      t.integer :user_id

      t.timestamps
    end
  end
end
