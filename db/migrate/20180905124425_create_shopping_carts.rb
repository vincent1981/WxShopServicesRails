class CreateShoppingCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_carts do |t|
      t.references :user
      t.references :product_spec
      t.integer :quantity, index: true

      t.timestamps null: false
    end
  end
end
