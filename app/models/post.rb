class Post < ApplicationRecord
  belongs_to :user
  belongs_to :startup, optional: true
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable


  acts_as_taggable_on :tags
  TAGS = ["IT","Экономика","Финансы","Дизайн","Искусственный интеллект","Бизнес-аналитика","Анализ данных","Менеджмент","Предпринимательство","Бизнес"]
  CATEGORIES = [
"Мнение об идее",
"Мнение о сайте",
"Стартап еще не запущен, нужен совет",
"Стартап уже запущен, нужен совет",
"Нужен совет по маркетингу/финансам/менеджменту",
"В поиске названия",
"Какой бизнес мне начать",
"Апдейт проекта",
"Детали проекта",
"Ищу инвестора",
"Ищу команду",
"How-to гайд"]

  acts_as_taggable_on :categories
  mount_uploader :cover, PostCoverUploader
  default_scope { order(created_at: "DESC") }


  #validates :name, presence: true

  def as_json 
    {
      title: title
    }
  end
end
