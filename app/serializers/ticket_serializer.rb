class TicketSerializer < ActiveModel::Serializer
  attributes :id, :status, :title, :description, :ticket_type, :effort
end
