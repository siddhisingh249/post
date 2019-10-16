class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :avatar
  has_many :comments

  
end
