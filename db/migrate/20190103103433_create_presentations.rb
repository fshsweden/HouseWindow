class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.string :title
      t.string :shorttext
      t.text :prez1
      t.text :prez2
      t.integer :user_id

      t.timestamps
    end
  end
end
