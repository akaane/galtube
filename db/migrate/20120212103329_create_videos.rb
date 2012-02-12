class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title_en
      t.string :title_zh
      t.text :description
      t.integer :duration
      t.boolean :published
      t.integer :hit
      t.integer :actor_id
      t.timestamps
    end
    add_index :videos, :actor_id
  end
end