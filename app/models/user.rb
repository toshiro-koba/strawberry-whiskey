# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  deleted_at         :datetime
#  email              :string           not null
#  encrypted_password :string           not null
#  first_name         :string           not null
#  last_name          :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
class User < ApplicationRecord
  has_many :tickets

  def full_name
    "#{self.last_name} #{self.first_name}"
  end
end
