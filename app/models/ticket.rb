# frozen_string_literal: true

# == Schema Information
#
# Table name: tickets
#
#  id           :bigint           not null, primary key
#  body         :text
#  created_by   :integer          not null
#  due_date     :datetime
#  is_completed :boolean          default(FALSE), not null
#  title        :string           not null
#  updated_by   :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  project_id   :integer          not null
#
class Ticket < ApplicationRecord
  belongs_to :project
  belongs_to :created_user, class_name: 'User', primary_key: 'id', foreign_key: 'created_by', inverse_of: :tickets
  belongs_to :updated_user, class_name: 'User', primary_key: 'id', foreign_key: 'updated_by', inverse_of: :tickets
end
