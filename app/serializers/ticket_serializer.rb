class TicketSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :status, :title, :description, :ticket_type, :effort, :priority, :formatted_created_at

  def formatted_created_at 
      Time.use_zone('America/Chicago') {object.created_at.strftime("%m/%d/%Y, %I:%M%p")}
  end 
end
