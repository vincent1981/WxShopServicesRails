class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name, null: false, default: '', index: true
      t.text :description
      t.boolean :online, null: false, defalut: false
      t.boolean :recommend, null: false, default: false
      
      t.timestamps null: false
    end
  end
end
