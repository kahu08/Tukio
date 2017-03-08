class AddCategoryIdToEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column(:events, :attendee_id, :int)
  end
end
