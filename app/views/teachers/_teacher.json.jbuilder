json.extract! teacher, :id, :account, :password, :name, :hurigana, :grade, :klass, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
