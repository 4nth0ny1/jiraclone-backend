class TicketSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :status, :title, :description, :ticket_type, :effort
end
