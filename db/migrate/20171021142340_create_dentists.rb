class CreateDentists < ActiveRecord::Migration[5.1]
  def change
    create_table :dentists do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false

      t.timestamps
    end

    add_index :dentists, :email, unique: true
  end
end
