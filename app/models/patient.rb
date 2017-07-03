class Patient < ApplicationRecord
  belongs_to :address
  belongs_to :gender
  has_many :visits
end