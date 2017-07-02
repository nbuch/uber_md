class Provider < ApplicationRecord
  belongs_to :address, inverse_of: :address
  has_many :shifts
  has_many :visits


  accepts_nested_attributes_for :address
end