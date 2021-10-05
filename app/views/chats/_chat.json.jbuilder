json.extract! chat, :id, :user_id, :target_id, :contents, :time, :created_at, :updated_at
json.url chat_url(chat, format: :json)
