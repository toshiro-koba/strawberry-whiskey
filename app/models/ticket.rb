# == Schema Information
#
# Table name: tickets
#
#  id           :bigint           not null, primary key
#  body         :text
#  due_date     :datetime
#  is_completed :boolean          default(FALSE), not null
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Ticket < ApplicationRecord
end
