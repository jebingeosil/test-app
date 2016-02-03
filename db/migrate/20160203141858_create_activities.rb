class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.integer :duration
      t.text :description

      t.timestamps null: false
    end
  end
end
