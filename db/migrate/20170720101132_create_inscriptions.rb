class CreateInscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :inscriptions do |t|
      t.references :dog_walk, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
