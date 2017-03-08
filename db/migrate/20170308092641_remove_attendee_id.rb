class RemoveAttendeeId < ActiveRecord::Migration[5.0]
  def change
    remove_column(:events, :attendee_id, :integer)
  end
end
