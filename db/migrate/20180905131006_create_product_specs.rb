class CreateProductSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :product_specs do |t|
      t.references :product, index: true
      t.string :spec, index: true, null: false
      t.decimal :price, null: false, default: 0.0, precision: 10, scale: 2
      t.integer :stocks, null: false, default: 0, index: true

      t.timestamps null: false
    end
  end
end
