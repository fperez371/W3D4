class AddAndRemoveIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :answer_choices, :question_id 
    add_index :answer_choices, :question_id

    remove_index :questions, :poll_id
    add_index :questions, :poll_id


    remove_index :polls, :author_id
    add_index :polls, :author_id

    
  end
end
