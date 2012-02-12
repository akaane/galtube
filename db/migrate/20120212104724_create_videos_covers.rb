class CreateVideosCovers < ActiveRecord::Migration
  def up
    create_table :videos_covers, :id => false, :force => true do |t|
      t.integer :video_id, :null => false
      t.integer :cover_id, :null => false
      t.timestamps
    end
    add_index :videos_covers, [:cover_id, :video_id], :unique => true
  end

  def down
    remove_index :videos_covers, :column => [:cover_id, :video_id]
    drop_table :videos_covers
  end
end
