#json.partial! "api/v1/startups/startup", startup: @startup

json.extract! @startup, :id, :name, :description, :likes, :created_at, :updated_at

json.set! :comments do
  json.array! @startup.comments, partial: "api/v1/startups/comment", as: :comment
end