class Month < ApplicationRecord
  has_many :summaries
  has_many :customers,through: :summaries
end
