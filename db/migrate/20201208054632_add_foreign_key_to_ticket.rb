class AddForeignKeyToTicket < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :tickets, :tasks
  end
end
