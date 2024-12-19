#json.partial! "api/v1/startups/startup", startup: @startup

json.extract! @startup, :id, :name, :description, :created_at, :updated_at
