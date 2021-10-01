json.extract! diary_coment, :id, :user_id, :coments, :diary_id, :time, :created_at, :updated_at
json.url diary_coment_url(diary_coment, format: :json)
