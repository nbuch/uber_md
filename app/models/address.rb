class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true, inverse_of: :providers
end
