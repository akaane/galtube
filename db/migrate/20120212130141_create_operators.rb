class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
