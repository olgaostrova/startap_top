json.extract! message, :id, :text, :link_to_origin, :author_name, :Chat_id, :created_at, :updated_at
json.url message_url(message, format: :json)
