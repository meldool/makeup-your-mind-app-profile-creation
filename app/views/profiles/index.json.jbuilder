json.array!(@profiles) do |profile|
  json.extract! profile, :id, :full_name, :contact_number, :location, :makeup_type, :bio
  json.url profile_url(profile, format: :json)
end