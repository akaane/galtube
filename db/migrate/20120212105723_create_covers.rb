class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :guid
      t.string :mime
      t.integer :length
      t.timestamps
    end
  end
end
