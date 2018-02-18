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

ActiveRecord::Schema.define(version: 20180217201423) do

  create_table "adresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "NumeroCivique"
    t.string "Rue"
    t.string "CodePostal"
    t.string "Ville"
    t.string "Province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Prenom"
    t.string "Nom"
    t.datetime "DateNaissance"
    t.string "NAS"
    t.bigint "adress_id"
    t.integer "NombreEnfants"
    t.integer "CompteTaxesProprietaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adress_id"], name: "index_clients_on_adress_id"
  end

  create_table "clients_conjoints", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id", null: false
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.bigint "conjoint_id"
    t.index ["conjoint_id"], name: "index_clients_conjoints_on_conjoint_id"
  end

  create_table "clients_employeurs", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id", null: false
    t.bigint "employeur_id", null: false
    t.datetime "dateDebut"
    t.datetime "dateFin"
  end

  create_table "clients_enfants", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id", null: false
    t.bigint "enfant_id", null: false
  end

  create_table "clients_etats_civils", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id", null: false
    t.bigint "etats_civil_id", null: false
    t.datetime "dateDebut"
    t.datetime "dateFin"
  end

  create_table "employeurs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Nom"
    t.bigint "adress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adress_id"], name: "index_employeurs_on_adress_id"
  end

  create_table "enfants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Nom"
    t.string "Prenom"
    t.datetime "DateNaissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etats_civils", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "SecteurEtudes"
    t.string "Niveau"
    t.datetime "DateDebut"
    t.datetime "DateCompletion"
    t.bigint "client_id"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_etudes_on_client_id"
    t.index ["institution_id"], name: "index_etudes_on_institution_id"
  end

  create_table "institutions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Nom"
    t.bigint "adress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adress_id"], name: "index_institutions_on_adress_id"
  end

  add_foreign_key "clients", "adresses"
  add_foreign_key "employeurs", "adresses"
  add_foreign_key "etudes", "clients"
  add_foreign_key "etudes", "institutions"
  add_foreign_key "institutions", "adresses"
end
