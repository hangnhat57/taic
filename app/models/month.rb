class Month < ApplicationRecord
  has_many :summaries,dependent: :delete_all
  has_many :customers,through: :summaries
end
