class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :answer_a
      t.text :answer_b
      t.text :answer_c
      t.text :answer_d
      t.text :answer_correct
      t.text :factoid
      t.text :activity

      t.timestamps null: false
    end
  end
end
