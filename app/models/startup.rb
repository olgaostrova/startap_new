class Startup < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  mount_uploader :avatar, StartupAvatarUploader
  default_scope { order(created_at: "DESC") }
  acts_as_taggable_on :tags
  TAGS = ["IT","Экономика","Финансы","Дизайн","Искусственный интеллект","Бизнес-аналитика","Анализ данных","Менеджмент","Предпринимательство","Бизнес"]

end
