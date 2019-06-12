class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :episode_id
      t.date :release_date
      t.string :director
      t.string :producer
      t.string :opening_crwl
      t.string :species
      t.string :starships
      t.string :vehicles
      t.string :characters
      t.string :planets
      t.string :url
      t.string :created
      t.string :edited

      t.timestamps
    end
  end
end
