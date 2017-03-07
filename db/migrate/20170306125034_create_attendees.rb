class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table(:attendees) do |t|
      t.column(:attendee_name, :string)
      t.column(:number, :integer)

      t.timestamps()
    end
  end
end
