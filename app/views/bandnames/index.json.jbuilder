json.array!(@bandnames) do |bandname|
  json.extract! bandname, :bandname, :albumname
  json.url bandname_url(bandname, format: :json)
end