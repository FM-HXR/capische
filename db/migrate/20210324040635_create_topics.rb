class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :title, null: false
      t.integer :category_id, null: false
      t.string :pro, null: false
      t.string :con, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
