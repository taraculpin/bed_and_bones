class AddSpeciesToPet < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :species, :string
  end
end
