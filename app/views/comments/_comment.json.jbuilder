json.extract! comment, :id, :text, :likes, :dislikes, :taps, :link_to_origin, :author_name, :Post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
