json.extract! detail, :id, :title, :completed, :completed_date, :product_id, :project_id, :user_id, :task_id, :created_at, :updated_at
json.url detail_url(detail, format: :json)
