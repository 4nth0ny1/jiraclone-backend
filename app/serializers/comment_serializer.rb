class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :ticket_id
end
