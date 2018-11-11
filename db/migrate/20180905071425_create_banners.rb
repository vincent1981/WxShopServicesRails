class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.references :product, index: true
      t.string :title, index: true, null: false, default: ''
      t.string :picture_url, index: true, null: false
      t.boolean :is_display ,null: false, default: false
      
      t.timestamps null: false
    end
  end
end
