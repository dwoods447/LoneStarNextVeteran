class CreateFrequentlyAskedQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :frequently_asked_questions do |t|

      t.text :question
      t.text :answer

      t.timestamps
    end
  end

  def down
    drop_table :frequently_asked_questions
  end
end
