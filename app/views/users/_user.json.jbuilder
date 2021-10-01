json.extract! user, :id, :account, :password, :name, :hurigana, :grade, :klass, :number, :created_at, :updated_at
json.url user_url(user, format: :json)
