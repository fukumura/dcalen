class ChangeColumnToEvent < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :start, :start_at
    rename_column :events, :end, :finish_at
    rename_column :events, :allDay, :all_day
  end
end
