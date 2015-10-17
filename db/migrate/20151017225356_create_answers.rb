class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.primary_key :id
      t.text :body
      t.integer :question_id
      t.integer :like
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
