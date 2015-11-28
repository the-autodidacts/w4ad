if current_user
  json.current_user do
  json.first_name current_user.first_name
  json.last_name  current_user.last_name
  json.email current_user.email
  json.user_rating current_user.rating
  json.user_id current_user.id
end
else
  json.current_user nil
end
