class CreateDogWalks < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_walks do |t|
      t.date :date
      t.time :hour
      t.string :title
      t.text :description
      t.string :meeting_point
      t.integer :available_spots
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
