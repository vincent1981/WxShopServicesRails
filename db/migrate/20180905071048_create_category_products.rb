class CreateCategoryProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :category_products do |t|
      t.references :category, index: true
      t.references :product, index: true

      t.timestamps null: true
    end
  end
end
