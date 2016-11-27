class AddIsCompletedToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :is_completed, :boolean, :default => false
  end
end
