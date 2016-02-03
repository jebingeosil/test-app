class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :planned_hours

      t.timestamps null: false
    end
  end
end
