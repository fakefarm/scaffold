json.extract! task, :id, :title, :user_id, :product_id, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
