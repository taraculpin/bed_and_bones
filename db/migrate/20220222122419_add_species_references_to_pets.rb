class AddSpeciesReferencesToPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :species, :string
    add_reference :pets, :species, foreign_key: true, null: false
  end
end
