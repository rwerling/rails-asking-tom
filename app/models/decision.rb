class Decision < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
end
