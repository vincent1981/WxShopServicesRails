class CreateUserReceivingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_receiving_addresses do |t|
      t.references :user
      t.references :province, index: true
      t.references :city, index: true
      t.references :district, index: true
      t.string :recipients, index: true, null: false
      t.string :phone_number, index: true, null: false
      t.string :address, index: true, null: false
      t.string :postal_code, index: true, null: false
      t.boolean :acquiescent, null: true, default: false

      t.timestamps null: false
    end
  end
end
