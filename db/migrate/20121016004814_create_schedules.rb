class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :group_id
      t.string :task
      t.integer :day
			t.boolean :status, default: false

      t.timestamps
    end
	add_index :schedules, [:group_id, :created_at]
  end
end
