class CreateActiveField < ActiveRecord::Migration
  def change
    add_column :students do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
