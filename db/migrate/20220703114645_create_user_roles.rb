class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.integer :project_id, null: false
      t.integer :user_id,    null: false
      t.integer :role_cd,    null: false

      t.timestamps
    end

    add_index :user_roles, %i(project_id user_id), unique: true
  end
end
