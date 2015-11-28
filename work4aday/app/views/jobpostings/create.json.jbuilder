json.jobposting do
  json.poster_name User.find(@jobposting.user_id).first_name
  json.poster_email User.find(@jobposting.user_id).email
  json.location @jobposting.location
  json.latitude @jobposting.latitude
  json.longitude @jobposting.latitude
  json.start_date @jobposting.start_date
  json.length @jobposting.length
  json.expires @jobposting.expires
  json.title @jobposting.title
  json.description @jobposting.description
  json.rate_of_pay @jobposting.rate_of_pay
end
