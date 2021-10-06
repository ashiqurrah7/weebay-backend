class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.text :categories
      t.text :desc
      t.integer :price
      t.integer :rentRate
      t.string :rentInterval
      t.integer :views

      t.timestamps
    end
  end
end
