class Post < ApplicationRecord 
  belongs_to :user
  has_many :comments
  mount_uploader :avatar, AvatarUploader

  validates :title, presence: true
  validates :body, presence: true
  #validates :avatar, presence: true
end