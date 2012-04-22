class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rank
      t.integer :video_id
      t.timestamps
    end
    add_index :reviews, :video_id
  end
end
