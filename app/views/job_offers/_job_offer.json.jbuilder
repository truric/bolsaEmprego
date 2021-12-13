json.extract! job_offer, :id, :name, :description, :date, :company, :county, :industry, :contract, :salary, :created_at, :updated_at
json.url job_offer_url(job_offer, format: :json)
