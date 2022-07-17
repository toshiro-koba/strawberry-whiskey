class AddCreatedByAndProjectIdToTicket < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :created_by, :integer, null: false
    add_column :tickets, :updated_by, :integer, null: false
    add_column :tickets, :project_id, :integer, null: false
  end
end
