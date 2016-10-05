class Month < ApplicationRecord
  has_many :summaries,dependent: :destroy
  has_many :customers,through: :summaries
end
