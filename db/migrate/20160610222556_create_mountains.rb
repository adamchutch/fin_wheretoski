class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :mountain
      t.string :state
      t.integer :terrain_difficulty
      t.integer :ski_acreage
      t.text :details

      t.timestamps

    end
  end
end
