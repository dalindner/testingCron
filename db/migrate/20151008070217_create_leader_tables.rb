class CreateLeaderTables < ActiveRecord::Migration
  def change
    create_table :leader_tables do |t|
      t.string :leaderId
      t.string :holderId

      t.timestamps
    end
  end
end
