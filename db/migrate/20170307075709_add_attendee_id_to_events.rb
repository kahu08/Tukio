class AddAttendeeIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column(:events, :attendee_id, :integer)

  end
end
