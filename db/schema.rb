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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140216130413) do

  create_table "employers", force: true do |t|
    t.string   "web_site"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "title_fa"
    t.string   "title_en"
  end

  create_table "messages", force: true do |t|
    t.text     "email"
    t.text     "message"
    t.string   "name"
    t.text     "phone"
    t.boolean  "visited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.text     "text_fa"
    t.text     "text_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "project_id"
  end

  create_table "project_categories", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sample_pic_file_name"
    t.string   "sample_pic_content_type"
    t.integer  "sample_pic_file_size"
    t.datetime "sample_pic_updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_category_id"
  end

  create_table "resources", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.text     "text_html_fa"
    t.text     "text_html_en"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.text     "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
