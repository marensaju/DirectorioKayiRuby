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

ActiveRecord::Schema.define(version: 20170502035615) do

  create_table "emprendimientos", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.text     "etiquetas"
    t.string   "correo"
    t.string   "pweb"
    t.string   "pface"
    t.string   "ptwitter"
    t.string   "pinstagram"
    t.string   "pbehance"
    t.string   "pyoutube"
    t.string   "plinkedin"
    t.string   "ihoraio"
    t.string   "fhorario"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "lvideo"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "portada_file_name"
    t.string   "portada_content_type"
    t.integer  "portada_file_size"
    t.datetime "portada_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "producto1_file_name"
    t.string   "producto1_content_type"
    t.integer  "producto1_file_size"
    t.datetime "producto1_updated_at"
  end

end
