class CreateAnswerRequirementQs < ActiveRecord::Migration
  def change
    create_table :answer_requirement_qs do |t|
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3

      t.timestamps
    end
  end
end
