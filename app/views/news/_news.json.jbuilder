json.extract! news, :id, :title, :date, :description, :created_at, :updated_at
json.url news_url(news, format: :json)
