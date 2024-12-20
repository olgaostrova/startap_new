class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile, dependent: :destroy
  has_many :startups
  has_many :posts
  has_many :comments
  has_many :tags
  has_many :likes

  after_create :create_profile
  #after_create :create_user_profile

  #private
#
  #def create_user_profile
  #  self.create_profile! unless self.profile.present?
  #end


end
