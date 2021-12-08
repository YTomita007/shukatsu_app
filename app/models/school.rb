class School < ApplicationRecord
  include UuidGenerator

  has_many :major
end
