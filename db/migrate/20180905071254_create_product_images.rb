class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.references :product, index: true
      t.string :image_url, index: true, default: '', null: false
      
      t.timestamps null: false
    end
  end
end
