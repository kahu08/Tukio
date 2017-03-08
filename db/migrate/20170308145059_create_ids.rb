class CreateIds < ActiveRecord::Migration[5.0]
  def change
    add_column(:events, :categorie_id, :integer)
    add_column(:attendees, :event_id, :integer)
  end
end
