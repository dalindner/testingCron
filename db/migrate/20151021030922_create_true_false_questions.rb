class CreateTrueFalseQuestions < ActiveRecord::Migration
  def change
    create_table :true_false_questions do |t|
    	t.string :question
    	t.integer :answer
    	t.integer :YesP1
    	t.integer :YesP2
    	t.integer :YesP3
    	t.integer :YesP4
    	t.integer :YesP5
    	t.integer :YesP6
    	t.integer :NoP1
    	t.integer :NoP2
    	t.integer :NoP3
    	t.integer :NoP4
    	t.integer :NoP5
    	t.integer :NoP6
      t.timestamps
    end
  end
end
