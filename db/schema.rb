# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_05_131006) do

  create_table "admins", force: :cascade do |t|
  end

  create_table "banners", force: :cascade do |t|
    t.integer "product_id"
    t.string "title", default: "", null: false
    t.string "picture_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_url"], name: "index_banners_on_picture_url"
    t.index ["product_id"], name: "index_banners_on_product_id"
    t.index ["title"], name: "index_banners_on_title"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name", null: false
    t.integer "parent_id"
    t.index ["category_name"], name: "index_categories_on_category_name"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "category_products", force: :cascade do |t|
    t.integer "category_id"
    t.integer "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["category_id"], name: "index_category_products_on_category_id"
    t.index ["product_id"], name: "index_category_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
  end

  create_table "product_images", force: :cascade do |t|
    t.integer "product_id"
    t.string "image_url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_url"], name: "index_product_images_on_image_url"
    t.index ["product_id"], name: "index_product_images_on_product_id"
  end

  create_table "product_specs", force: :cascade do |t|
    t.integer "product_id"
    t.string "spec", null: false
    t.decimal "price", precision: 10, scale: 2, default: "0.0", null: false
    t.integer "stocks", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_specs_on_product_id"
    t.index ["spec"], name: "index_product_specs_on_spec"
    t.index ["stocks"], name: "index_product_specs_on_stocks"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name", default: "", null: false
    t.text "description"
    t.boolean "online", null: false
    t.boolean "recommend", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_name"], name: "index_products_on_product_name"
  end

  create_table "shopping_carts", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string "nicknamem", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nicknamem"], name: "index_users_on_nicknamem"
  end

  create_table "wx_users", force: :cascade do |t|
    t.integer "user_id"
    t.string "unionid", default: "", null: false
    t.string "access_token", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_wx_users_on_access_token", unique: true
    t.index ["unionid"], name: "index_wx_users_on_unionid"
    t.index ["user_id"], name: "index_wx_users_on_user_id"
  end

end
