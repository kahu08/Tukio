class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table(:events) do |t|
      t.column(:organization, :string)
      t.column(:event_name, :string)
      t.column(:time, :time)
      t.column(:location, :string)
      t.column(:fee, :integer)

      t.timestamps()
    end
  end
end
