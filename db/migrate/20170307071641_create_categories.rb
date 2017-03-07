class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table(:categories) do |t|
      t.column(:categorie_name, :string)

      t.timestamps()
    end
  end
end
