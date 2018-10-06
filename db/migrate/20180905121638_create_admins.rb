class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :username, null: false, default: '', index: { unique: true }
      t.string :password_digset, null: false, default: ''
      t.string :access_token, null: false, default: '', index: { unique: true }

      t.timestamps null: false
    end
  end
end
