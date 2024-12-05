json.extract! @post, :id, :title, :text, :description, :likes, :created_at, :updated_at

json.set! :comments do
  json.array! @post.comments, partial: "api/v1/posts/comment", as: :comment
end