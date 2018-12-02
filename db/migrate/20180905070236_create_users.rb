class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname, null: false, index: true, default: ''
      t.string :unionid, null: false, index: true, default: ''
      t.timestamps null: false
    end
  end
end
