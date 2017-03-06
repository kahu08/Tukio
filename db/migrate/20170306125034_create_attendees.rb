class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table(:attendees) do |t|
      t.column(:name, :string)
      t.column(:number, :integer)

      timestamps()
    end
  end
end
