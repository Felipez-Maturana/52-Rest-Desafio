json.extract! bday, :id, :name, :fecha, :created_at, :updated_at
json.title bday.name
json.start bday.fecha
json.end bday.fecha
json.url bday_url(bday, format: :json)
