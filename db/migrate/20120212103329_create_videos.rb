class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title_en
      t.string :title_zh
      t.text :description
      t.integer :duration
      t.integer :width
      t.integer :height
      t.boolean :published
      t.integer :hits
      t.string :binary_guid
      t.integer :actor_id
      t.timestamps
    end
    add_index :videos, :actor_id
  end
end