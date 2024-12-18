class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_and_belongs_to_many :startups
  has_many :chats
  has_many :posts
  has_many :messages
  has_many :comments
  has_many :tags
end
