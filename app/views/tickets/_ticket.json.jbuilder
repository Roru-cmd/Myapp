json.extract! ticket, :id, :ticket_d, :ticket_start, :ticket_end, :user_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
