class AddIsPrivateToTaskList < ActiveRecord::Migration[5.0]
  def change
    add_column :task_lists, :is_private, :boolean, :default => false
  end
end
