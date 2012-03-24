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

ActiveRecord::Schema.define(:version => 20120319120522) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "event_type"
    t.datetime "date"
    t.string   "location"
    t.string   "tags"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "invitations", :force => true do |t|
    t.string   "email"
    t.boolean  "confirm"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "invitations", ["event_id"], :name => "index_invitations_on_event_id"

  create_table "users", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "andrewID"
    t.float    "graduationYear"
    t.string   "positionTitle"
    t.string   "deptName"
    t.date     "creationDate"
    t.string   "userName"
    t.string   "password"
    t.date     "lastActive"
    t.string   "personStatus"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "photo"
  end

end
