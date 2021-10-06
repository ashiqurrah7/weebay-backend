json.content format_content(@user.content)
json.(@user, :created_at, :updated_at)

json.user do
  json.email @user.creator.email
  json.email_address @user.creator.email_address_with_name
  json.url url_for(@user.creator, format: :json)
end



end