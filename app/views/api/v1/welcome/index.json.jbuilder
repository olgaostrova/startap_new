json.set! :posts do
  json.array! @posts, partial: "api/v1/posts/post", as: :post
end

json.set! :comments do
  json.array! @comments, partial: "api/v1/posts/comment", as: :comment
end