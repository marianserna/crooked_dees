class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id, null: false
      t.integer :dentist_id, null: false
      t.datetime :appointment_at, null: false
      t.string :status, null: false, default: 'pending'
      t.text :notes

      t.timestamps
    end

    add_index :appointments, :user_id
    add_index :appointments, :dentist_id
  end
end
