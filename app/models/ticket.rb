class Ticket < ApplicationRecord
    has_many :comments
    validates_presence_of :status, :title, :description, :effort, :ticket_type
end
