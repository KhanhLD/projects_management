class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
	add_index :groups, :user_id
	add_index :groups, :project_id
	add_index :groups, [:user_id, :project_id], unique: true
  end
end
