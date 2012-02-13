class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :binary_guid
      t.string :mime
      t.integer :length
      t.integer :width
      t.integer :height
      t.timestamps
    end
  end
end
