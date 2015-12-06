class CreateScheduleQs < ActiveRecord::Migration
  def change
    create_table :schedule_qs do |t|
      t.string :question
      t.string :prompt1
      t.string :prompt2
      t.string :prompt3
      t.string :prompt4
      t.integer :score1P1
      t.integer :score2P1
      t.integer :score3P1
      t.integer :score4P1
      t.integer :score1P2
      t.integer :score2P2
      t.integer :score3P2
      t.integer :score4P2
      t.integer :score1P3
      t.integer :score2P3
      t.integer :score3P3
      t.integer :score4P3
      t.integer :score1P4
      t.integer :score2P4
      t.integer :score3P4
      t.integer :score4P4
      t.integer :score1P5
      t.integer :score2P5
      t.integer :score3P5
      t.integer :score4P5
      t.integer :score1P5
      t.integer :score2P5
      t.integer :score3P5
      t.integer :score4P5
      t.integer :score1P6
      t.integer :score2P6
      t.integer :score3P6
      t.integer :score4P6

      t.timestamps
    end
  end
end
