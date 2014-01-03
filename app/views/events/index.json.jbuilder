json.array!(@events) do |event|
  json.extract! event, :user_id, :mobile_no, :title, :date, :description
  json.url event_url(event, format: :json)
end
