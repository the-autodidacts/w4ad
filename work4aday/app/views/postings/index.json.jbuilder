json.array!(@postings) do |posting|
  json.extract! posting, :id, :location, :lattitude, :longitude, :title, :description, :date, :time, :length_of_job, :rate_of_pay, :expires
  json.url posting_url(posting, format: :json)
end
