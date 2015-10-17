class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :introduction
      t.integer :speed_score
      t.integer :readable_score
      t.integer :row_score
      t.integer :recyclable_score
      t.integer :general_score
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
