json.extract! post, :id, :title, :text, :description, :likes, :dislikes, :taps, :tags, :author_name, :User_id, :created_at, :updated_at
json.url post_url(post, format: :json)
