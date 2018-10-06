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

ActiveRecord::Schema.define(version: 2018_10_06_135516) do

  create_table "admins", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "password_digset", default: "", null: false
    t.string "access_token", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_admins_on_access_token", unique: true
    t.index ["username"], name: "index_admins_on_username", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.integer "parent_id"
    t.string "category"
    t.string "name"
    t.string "pinyin"
    t.string "area_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_code"], name: "index_areas_on_area_code"
    t.index ["category"], name: "index_areas_on_category"
    t.index ["name"], name: "index_areas_on_name"
    t.index ["parent_id"], name: "index_areas_on_parent_id"
    t.index ["pinyin"], name: "index_areas_on_pinyin"
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

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_spec_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_spec_id"], name: "index_order_items_on_product_spec_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "count_money", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
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
    t.integer "user_id"
    t.integer "product_spec_id"
    t.integer "user_receiving_address_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_spec_id"], name: "index_shopping_carts_on_product_spec_id"
    t.index ["quantity"], name: "index_shopping_carts_on_quantity"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
    t.index ["user_receiving_address_id"], name: "index_shopping_carts_on_user_receiving_address_id"
  end

  create_table "user_receiving_addresses", force: :cascade do |t|
    t.integer "use_id"
    t.integer "province_id"
    t.integer "city_id"
    t.integer "district_id"
    t.string "recipients", null: false
    t.string "phone_number", null: false
    t.string "address", null: false
    t.string "postal_code", null: false
    t.boolean "acquiescent", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_user_receiving_addresses_on_address"
    t.index ["city_id"], name: "index_user_receiving_addresses_on_city_id"
    t.index ["district_id"], name: "index_user_receiving_addresses_on_district_id"
    t.index ["phone_number"], name: "index_user_receiving_addresses_on_phone_number"
    t.index ["postal_code"], name: "index_user_receiving_addresses_on_postal_code"
    t.index ["province_id"], name: "index_user_receiving_addresses_on_province_id"
    t.index ["recipients"], name: "index_user_receiving_addresses_on_recipients"
    t.index ["use_id"], name: "index_user_receiving_addresses_on_use_id"
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
