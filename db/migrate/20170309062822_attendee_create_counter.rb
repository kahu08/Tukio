class AttendeeCreateCounter < ActiveRecord::Migration[5.0]
  def change
    add_column(:events, :event_counter, :integer)
  end
end
