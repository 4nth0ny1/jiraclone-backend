class Comment < ApplicationRecord
  belongs_to :ticket
  validates_presence_of :content, :ticket_id
end
