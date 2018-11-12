json.extract! record, :id, :title, :stat, :created_at, :updated_at
json.url record_url(record, format: :json)
