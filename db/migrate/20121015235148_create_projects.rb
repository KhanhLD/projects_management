class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.datetime :start
      t.datetime :end
      t.boolean :status, default: false

      t.timestamps
    end
	add_index :projects, :name, unique: true
	add_index :projects, :start
  end
end
