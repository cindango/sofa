class AddDateToThings < ActiveRecord::Migration
  def change
    add_column :things, :the_date, :date
    add_index :things, :the_date
  end
end
