json.jobpostings(@jobpostings) do |posting|
  json.poster_name User.find(posting.user_id).first_name
  json.poster_email User.find(posting.user_id).email
  json.location posting.location
  json.latitude posting.latitude
  json.longitude posting.latitude
  json.start_date posting.start_date
  json.length posting.length
  json.expires posting.expires
  json.title posting.title
  json.description posting.description
  json.rate_of_pay posting.rate_of_pay
end
