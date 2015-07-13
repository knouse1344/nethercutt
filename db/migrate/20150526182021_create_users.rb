class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :gender
      t.integer :score

      t.timestamps null: false
    end
  end
end
