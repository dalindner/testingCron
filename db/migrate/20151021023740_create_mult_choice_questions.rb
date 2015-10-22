class CreateMultChoiceQuestions < ActiveRecord::Migration
  def change
    create_table :mult_choice_questions do |t|

      t.timestamps
    end
  end
end
