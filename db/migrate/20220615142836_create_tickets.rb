# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string   :title, null: false
      t.text     :body
      t.datetime :due_date
      t.boolean  :is_completed, null: false, default: false

      t.timestamps
    end
  end
end
