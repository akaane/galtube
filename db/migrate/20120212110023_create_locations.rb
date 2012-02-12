class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name_en
      t.string :name_zh
      t.timestamps
    end
  end
end
