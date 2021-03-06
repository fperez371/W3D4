class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
       t.integer :poll_id, null: false
        t.text :text 

       t.timestamp
    end
    
    add_index :questions, :poll_id, unique: true
  end
end
