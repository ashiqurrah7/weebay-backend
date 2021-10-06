class CreateRenteds < ActiveRecord::Migration[6.1]
  def change
    create_table :renteds do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
