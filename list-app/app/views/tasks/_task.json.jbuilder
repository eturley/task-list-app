json.extract! task, :id, :title, :description, :priority, :duedate, :iscompleted, :TaskList_id, :created_at, :updated_at
json.url task_url(task, format: :json)