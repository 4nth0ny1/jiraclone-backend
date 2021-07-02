class CommentSerializer < ActiveModel::Serializer
  belongs_to :ticket
  attributes :id, :content, :ticket_id
end
