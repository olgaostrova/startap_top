json.extract! chat, :id, :chat_number, :messeges_counter, :participants_counter, :User_id, :created_at, :updated_at
json.url chat_url(chat, format: :json)
