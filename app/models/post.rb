class Post < ApplicationRecord
  belongs_to :user
  belongs_to :startup, optional: true
  has_many :comments, dependent: :destroy
  acts_as_taggable_on :tags  
  acts_as_taggable_on :categories

  #validates :name, presence: true

  def as_json 
    {
      title: title
    }
  end
end
