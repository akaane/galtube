class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title_en
      t.string :title_zh
      t.integer :duration
      t.integer :width
      t.integer :height
      t.integer :current_review
      t.boolean :published
      t.integer :hits
      t.string :binary_guid
      t.integer :actor_id
      t.timestamps
    end
    add_index :videos, :actor_id
  end
end