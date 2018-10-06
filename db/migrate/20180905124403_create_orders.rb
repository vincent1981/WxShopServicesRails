class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user
      t.decimal :count_money, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
