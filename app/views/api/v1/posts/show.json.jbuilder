json.extract! @post, :id, :title, :text, :likes, :dislikes, :startup_id, :tags, :public, :cover, :created_at, :updated_at

json.set! :comments do
  json.array! @post.comments, partial: "api/v1/posts/comment", as: :comment
end