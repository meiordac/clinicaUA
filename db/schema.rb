# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130530002533) do

  create_table "employee_turns", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "turn_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Adress"
    t.string   "Phone"
    t.string   "Function"
    t.string   "MaritalStatus"
    t.string   "Academicformation"
    t.string   "intNumberOfChildren"
    t.string   "Religion"
    t.string   "SpouseName"
    t.string   "OccupationSpouse"
    t.string   "AssistancetoTraining"
    t.date     "HireDate"
    t.date     "SettlementDate"
    t.date     "DeliveryInUniformDate"
    t.date     "ProtectiveEquipmentDeliveryDate"
    t.string   "Permissions"
    t.string   "DateTimeHolidays"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "inventories", :force => true do |t|
    t.boolean  "reutilizable"
    t.float    "finalcost"
    t.integer  "quantity"
    t.string   "name"
    t.string   "image"
    t.string   "codeproduct"
    t.float    "netvalue"
    t.float    "descto"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "typecleaning"
    t.string   "area"
    t.string   "status"
    t.string   "unit"
    t.string   "building"
    t.string   "floor"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "turns", :force => true do |t|
    t.boolean  "validshift"
    t.datetime "shifhtstartime"
    t.datetime "shiftendtime"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
