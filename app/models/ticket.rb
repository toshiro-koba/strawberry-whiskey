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
end
