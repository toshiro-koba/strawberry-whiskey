# frozen_string_literal: true

class AddCreatedByAndProjectIdToTicket < ActiveRecord::Migration[7.0]
  def change
    change_table :tickets, bulk: true do |t|
      t.integer :created_by, null: false
      t.integer :updated_by, null: false
      t.integer :project_id, null: false
    end
  end
end
