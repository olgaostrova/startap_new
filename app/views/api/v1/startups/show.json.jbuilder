#json.partial! "api/v1/startups/startup", startup: @startup

json.extract! @startup, :id, :name, :avatar, :description, :tag_list, :banner, :public, :created_at, :updated_at
