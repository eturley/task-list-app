class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :duedate
      t.boolean :iscompleted
      t.belongs_to :TaskList, foreign_key: true

      t.timestamps
    end
  end
end
