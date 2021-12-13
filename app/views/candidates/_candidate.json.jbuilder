json.extract! candidate, :id, :name, :description, :industry, :employed, :grade, :qualification, :experience, :address, :county, :phone, :fax, :email, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
