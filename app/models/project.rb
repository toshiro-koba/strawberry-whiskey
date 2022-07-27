# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  color      :string
#  deleted_at :datetime
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_projects_on_title_and_deleted_at  (title,deleted_at) UNIQUE
#
class Project < ApplicationRecord
  has_many :tickets, dependent: :destroy
end
