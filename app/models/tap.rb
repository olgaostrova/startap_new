class Tap < ApplicationRecord
  belongs_to :user
  belongs_to :tapable, polymorphic: true
end
