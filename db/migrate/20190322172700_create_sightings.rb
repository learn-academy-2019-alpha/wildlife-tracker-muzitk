class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.string :date
      t.string :time
      t.string :langitude
      t.string :longitude
      t.string :region
      t.integer :animal_id

      t.timestamps
    end
  end
end
