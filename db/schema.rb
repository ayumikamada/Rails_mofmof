ActiveRecord::Schema.define(version: 2020_09_19_110323) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string "route"
    t.string "station"
    t.integer "minnutes_walk"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_nearest_stations_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "property_name"
    t.integer "rent"
    t.string "address"
    t.integer "age"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
