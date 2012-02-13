class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name_en
      t.string :name_zh
      t.date :birthday
      t.integer :location_id
      t.timestamps
    end
    add_index :actors, :location_id
  end
end