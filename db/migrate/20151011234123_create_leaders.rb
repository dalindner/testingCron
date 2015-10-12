class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
