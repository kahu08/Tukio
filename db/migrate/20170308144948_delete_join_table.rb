class DeleteJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_table(:attendees_events)
  end
end
