class CreateTableAttendeesEvents < ActiveRecord::Migration[5.0]
  def change
    create_table(:attendees_events) do |t|
      t.column(:attendee_id, :int)
      t.column(:event_id, :int)

      t.timestamps()
  end
  end
end
