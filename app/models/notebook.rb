# == Schema Information
#
# Table name: notebooks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notebook < ApplicationRecord
  validates :name, presence: true

  has_many :notes, dependent: :delete_all
  belongs_to :user
end
