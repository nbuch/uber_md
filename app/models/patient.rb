class Patient < ApplicationRecord
  belongs_to :address
  has_many :visits
end