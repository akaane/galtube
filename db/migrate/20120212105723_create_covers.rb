class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :binary_guid
      t.string :mime
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :video_id
      t.timestamps
    end
    add_index :covers, :video_id
  end
end
