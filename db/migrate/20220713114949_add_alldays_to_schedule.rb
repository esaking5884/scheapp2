class AddAlldaysToSchedule < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :all_days, :boolean
  end
end
