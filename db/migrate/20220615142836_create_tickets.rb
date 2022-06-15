class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string   :title
      t.text     :body
      t.datetime :due_date
      t.boolean  :is_completed

      t.timestamps
    end
  end
end
