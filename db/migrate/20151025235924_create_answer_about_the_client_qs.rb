class CreateAnswerAboutTheClientQs < ActiveRecord::Migration
  def change
    create_table :answer_about_the_client_qs do |t|
      t.integer :project_id
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.integer :answer5
      t.integer :answer6
      t.integer :answer7
      t.integer :answer8
      t.integer :answer9
      t.integer :answer10
      t.integer :answer11
      t.integer :answer12
      t.integer :answer13
      t.integer :answer14
      t.integer :answer15
      t.integer :answer16
      t.integer :answer17
      t.integer :answer18
      t.integer :answer19
      t.integer :answer20
      t.integer :answer21
      t.integer :answer22
      t.integer :answer23
      t.integer :answer24
      t.integer :answer25


      t.integer :answer_q_id
      t.timestamps
    end
  end
end
