json.extract! diary, :id, :user_id, :title, :contents, :time, :created_at, :updated_at
json.url diary_url(diary, format: :json)
