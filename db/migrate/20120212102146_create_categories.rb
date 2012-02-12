class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.column :title_en, :string
      t.column :title_zh, :string
      t.timestamps
    end
  end
end
