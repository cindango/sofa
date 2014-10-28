class AddCompletedToThings < ActiveRecord::Migration
  def change
    add_column :things, :completed, :boolean
  end
end
