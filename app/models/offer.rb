class Offer < ApplicationRecord
  include UuidGenerator

  belongs_to :company
end
