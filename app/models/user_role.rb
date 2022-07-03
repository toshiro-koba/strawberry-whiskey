# == Schema Information
#
# Table name: user_roles
#
#  id         :bigint           not null, primary key
#  role_cd    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_user_roles_on_project_id_and_user_id  (project_id,user_id) UNIQUE
#
class UserRole < ApplicationRecord
end
