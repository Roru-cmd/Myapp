class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.text :ticket_d
      t.datetime :ticket_start
      t.datetime :ticket_end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
