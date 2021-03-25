class CreatePoints < ActiveRecord::Migration[6.1]
  def change
    create_table :points do |t|
      t.string :title, null: false
      t.boolean :position, null: false, default: true
      t.text :main_point, null: false
      t.text :conclusion, null: false
      t.integer :rating, array: true, default: [0,0,0]
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true
      t.timestamps
    end
  end
end
