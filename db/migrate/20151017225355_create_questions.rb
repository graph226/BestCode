class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.primary_key :id
      t.string :title
      t.text :description
      t.integer :theme
      t.text :code
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
