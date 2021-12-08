class Classroom < ApplicationRecord
  include UuidGenerator

  belongs_to :major
  has_many :students
end
