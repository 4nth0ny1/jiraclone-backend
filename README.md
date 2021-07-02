classes 
    TICKET - build a function or fix a problem
        status 
            dropdown: 
                unscheduled
                ready for development
                in development
                ready for review 
                ready for deploy
                completed
        title 
        description
        type: 
            radio: 
                feature 
                bug 
                chore
        effort 
            dropdown: 
                1 point is easy 
                2
                3
                5
                8
                13 highest effort

    COMMENT - 
        content
        ticket_id

    


instructions for backend setup 

rails g resource Ticket create columns and add vlaidations    null: false 
rails g resource Ticket 

add relationships to models  add validations   validates_presence_of :content, :ticket_id


add seeds
seed db

test in console to see if relationships are working 

CORS 
uncommment gem 'rack-cors'
add gem 'active_model_serializers'
add gem 'pry'
bundle install 
uncomment cors in cors file. change example.com to *

SERIALIZER 
rails g serializer Ticket 
rails g serializer Comment 
add columns to each serializer 

CONTROLLERS 
add index, create, update, destroy
comments is nested 
render json: ....

ROUTES 
change routes, make comments nested 

run rails server and check if json comes through



