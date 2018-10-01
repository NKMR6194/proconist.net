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

ActiveRecord::Schema.define(version: 2016_10_16_062854) do

  create_table "article_categories", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "url", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
  end

  create_table "article_categories_articles", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "article_category_id", null: false
    t.index ["article_category_id"], name: "index_article_categories_articles_on_article_category_id"
    t.index ["article_id"], name: "index_article_categories_articles_on_article_id"
  end

  create_table "articles", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "url", null: false
    t.string "title", null: false
    t.text "body", null: false
    t.integer "operator_id", null: false
    t.string "thumbnail_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "published_at", default: "2200-12-30 15:00:00", null: false
  end

  create_table "contests", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "date", null: false
    t.string "place", null: false
    t.string "title", null: false
    t.string "competition_title", null: false
    t.string "themed_title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nth"
  end

  create_table "documents", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "document_type", null: false
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "label", null: false
    t.string "title", null: false
    t.string "url", null: false
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operators", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "identifier", null: false
    t.integer "position", default: 0, null: false
    t.string "name", null: false
    t.string "password_digest"
    t.string "icon"
    t.integer "school_id"
    t.string "github"
    t.string "bitbucket"
    t.string "slideshare"
    t.string "twitter"
    t.string "facebook"
    t.string "site"
    t.string "description"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier"], name: "index_operators_on_identifier", unique: true
  end

  create_table "prizes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id", "name"], name: "index_prizes_product_name_unique", unique: true
  end

  create_table "products", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "contest_id", null: false
    t.integer "section", null: false
    t.integer "school_id", null: false
    t.string "name", null: false
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "contest_id", null: false
    t.integer "section", null: false
    t.string "product_name", null: false
    t.string "email", null: false
    t.string "repository_url"
    t.string "slide_url"
    t.string "site_url"
    t.string "twitter"
    t.string "facebook"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end