class Visit < ApplicationRecord
  belongs_to :provider
  belongs_to :patient
  belongs_to :address
end