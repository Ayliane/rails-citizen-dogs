class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :race
      t.integer :age
      t.text :description
      t.string :gender
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
