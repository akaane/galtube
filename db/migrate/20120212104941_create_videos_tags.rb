class CreateVideosTags < ActiveRecord::Migration
  def up
    create_table :videos_tags, :id => false, :force => true do |t|
      t.integer :video_id, :null => false
      t.integer :tag_id, :null => false
      t.timestamps
    end
    add_index :videos_tags, [:tag_id, :video_id], :unique => true
  end

  def down
    remove_index :videos_tags, :column => [:tag_id, :video_id]
    drop_table :videos_tags
  end
end
