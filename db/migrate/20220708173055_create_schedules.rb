class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.text :title
      t.datetime :start_time
      t.datetime :finish_time
      t.text :memo

      t.timestamps
    end
  end
end
