json.extract! booking, :id, :days, :occupants, :food, :room_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
