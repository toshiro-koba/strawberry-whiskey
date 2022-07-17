class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string   :title, null: false
      t.string   :color
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :projects, %i(title deleted_at), unique: true
  end
end
