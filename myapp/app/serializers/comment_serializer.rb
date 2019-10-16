class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commenter, :comment
end
