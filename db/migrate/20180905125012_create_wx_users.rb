class CreateWxUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :wx_users do |t|
      t.references :user, index: true
      t.string :access_token, null: false, default: '', index: { unique: true }

      t.timestamps null: false
    end
  end
end
