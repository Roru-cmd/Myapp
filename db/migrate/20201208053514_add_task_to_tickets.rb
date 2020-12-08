class AddTaskToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :task
  end
end
