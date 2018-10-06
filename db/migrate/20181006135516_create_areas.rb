class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.references :parent
      t.string :category, index: true
      t.string :name, index: true
      t.string :pinyin, index: true
      t.string :area_code, index: true
      
      t.timestamps null: false
    end
  end
end
