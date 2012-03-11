class CreateBinaries < ActiveRecord::Migration
  def change
    create_table :binaries do |t|
      t.integer :guid
      t.string :name
      t.integer :size, :limit => 8
      t.string :mime
      t.binary :data, :limit => 1.megabytes
      t.timestamps
    end
    add_index :binaries, :guid
  end
end
