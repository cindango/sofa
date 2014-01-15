class AddTimeToThings < ActiveRecord::Migration
  def change
    add_column :things, :time, :time
  end
end
