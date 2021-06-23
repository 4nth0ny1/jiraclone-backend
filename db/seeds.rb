# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ticket_one = Ticket.create(status: 'unscheduled', title: 'New button', description: 'adfasfdafsf', ticket_type: 'feature', effort: 1)
ticket_two = Ticket.create(status: 'ready for development', title: 'add css', description: 'ddddddddd', ticket_type: 'feature', effort: 2)
ticket_three = Ticket.create(status: 'ready for review', title: 'navbar', description: 'aaaaaaa', ticket_type: 'chore', effort: 1)

comment_one = Comment.create( content: '1st comment', ticket_id: ticket_one.id)
comment_two = Comment.create( content: '2nd comment', ticket_id: ticket_two.id)
comment_three = Comment.create( content: '3rd comment', ticket_id: ticket_three.id)
comment_four = Comment.create( content: '4th comment', ticket_id: ticket_one.id)
