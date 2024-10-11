# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_10_11_113413) do
  create_table "chats", force: :cascade do |t|
    t.integer "chat_number"
    t.integer "messeges_counter"
    t.integer "participants_counter"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.integer "likes"
    t.integer "dislikes"
    t.integer "taps"
    t.string "link_to_origin"
    t.string "author_name"
    t.integer "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.string "link_to_origin"
    t.string "author_name"
    t.integer "chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "text"
    t.string "description"
    t.integer "likes"
    t.integer "dislikes"
    t.integer "taps"
    t.string "tags"
    t.string "author_name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.string "author_name"
    t.string "description"
    t.string "tags"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_startups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "login"
    t.string "password"
    t.string "email"
    t.string "occupation"
    t.string "tags"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chats", "users"
  add_foreign_key "comments", "posts"
  add_foreign_key "messages", "chats"
  add_foreign_key "posts", "users"
  add_foreign_key "startups", "users"
end
