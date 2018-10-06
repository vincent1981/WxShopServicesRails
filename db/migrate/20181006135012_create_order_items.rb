class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order
      t.references :product_spec
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
