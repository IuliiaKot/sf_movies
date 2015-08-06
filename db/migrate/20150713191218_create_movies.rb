class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :actor_first
      t.string :actor_second
      t.string :actor_third
      t.string :release_year
      t.string :production_company
      t.string :distributor
      t.string :writer
      t.string :director
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :funfuct

      t.timestamps null: false
    end
  end
end
