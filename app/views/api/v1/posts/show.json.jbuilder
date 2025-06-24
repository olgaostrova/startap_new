json.extract! @post, :id, :title, :text, :likes, :dislikes, :tag_list, :category_list, :startup_id, :user_id, :cover, :public, :created_at, :updated_at

json.set! :comments do
  json.array! @post.comments, partial: "api/v1/posts/comment", as: :comment
end