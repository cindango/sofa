class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :description

      t.timestamps
    end
  end
end
