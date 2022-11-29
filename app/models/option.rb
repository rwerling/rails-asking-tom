class Option < ApplicationRecord
  belongs_to :decision
  has_many :arguments, dependent: :destroy
end
