class User < ApplicationRecord

  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
  has_one :profile, dependent: :destroy
  has_many :startups
  has_many :posts
  has_many :comments
  has_many :tags
  has_many :likes
  has_many :dislikes
  has_many :taps

  after_create :create_profile
  #after_create :create_user_profile

  #private
#
  #def create_user_profile
  #  self.create_profile! unless self.profile.present?
  #end


end
