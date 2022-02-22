class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
