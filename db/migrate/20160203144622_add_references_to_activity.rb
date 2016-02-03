class AddReferencesToActivity < ActiveRecord::Migration
  def change
  	add_column :activities, :user_id, :integer
  	add_column :activities, :task_id, :integer
  end
end
