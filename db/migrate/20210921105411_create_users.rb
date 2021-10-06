class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone
      t.string :password
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
