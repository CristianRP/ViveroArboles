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

ActiveRecord::Schema.define(version: 2019_06_11_033734) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "company_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_customers_on_company_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "region_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_departments_on_region_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "employee_id", precision: 38
    t.integer "payment_id", precision: 38
    t.integer "store_id", precision: 38
    t.integer "customer_id", precision: 38
    t.integer "amount", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date_order"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["employee_id"], name: "index_invoices_on_employee_id"
    t.index ["payment_id"], name: "index_invoices_on_payment_id"
    t.index ["store_id"], name: "index_invoices_on_store_id"
  end

  create_table "municipalities", force: :cascade do |t|
    t.string "name"
    t.integer "department_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "i_municipalities_department_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "invoice_id", precision: 38
    t.integer "product_id", precision: 38
    t.integer "quantity", precision: 38
    t.integer "amount", precision: 38
    t.integer "municipality_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "i_order_details_invoice_id"
    t.index ["municipality_id"], name: "i_ord_det_mun_id"
    t.index ["product_id"], name: "i_order_details_product_id"
  end

  create_table "payment_details", force: :cascade do |t|
    t.string "description"
    t.string "amount"
    t.integer "payment_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "i_payment_details_payment_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "amount"
    t.integer "payment_type_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_type_id"], name: "i_payments_payment_type_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price", precision: 38
    t.integer "stock", precision: 38
    t.integer "category_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.string "description"
    t.integer "category_id", precision: 38
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "value", precision: 38
    t.index ["category_id"], name: "index_taxes_on_category_id"
  end

  add_foreign_key "customers", "companies"
  add_foreign_key "departments", "regions"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "employees"
  add_foreign_key "invoices", "payments"
  add_foreign_key "invoices", "stores"
  add_foreign_key "municipalities", "departments"
  add_foreign_key "order_details", "invoices"
  add_foreign_key "order_details", "municipalities"
  add_foreign_key "order_details", "products"
  add_foreign_key "payment_details", "payments"
  add_foreign_key "payments", "payment_types"
  add_foreign_key "products", "categories"
  add_foreign_key "taxes", "categories"
end
