class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :status, null: false
      t.text :title, null: false
      t.text :description, null: false
      t.string  :ticket_type, null: false
      t.integer :effort, null: false

      t.timestamps
    end
  end
end
