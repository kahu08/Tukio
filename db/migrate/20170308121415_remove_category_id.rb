class RemoveCategoryId < ActiveRecord::Migration[5.0]
  def change
    remove_column(:events, :categorie_id, :integer)
  end
end
