class CreateCategoriesVideos < ActiveRecord::Migration
  def up
    create_table :categories_videos, :id => false, :force => true do |t|
      t.integer :category_id, :null => false
      t.integer :video_id, :null => false
      t.timestamps
    end
    add_index :categories_videos, [:category_id, :video_id], :unique => true
  end

  def down
    remove_index :categories_videos, :column => [:category_id, :video_id]
    drop_table :categories_videos
  end
end