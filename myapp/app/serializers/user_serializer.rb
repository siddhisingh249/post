class UserSerializer < ApplicationSerializer
  attributes :id, :email
  has_many :posts
end
