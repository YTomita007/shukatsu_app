class Major < ApplicationRecord
  include UuidGenerator

  belongs_to :school, optional: true
  has_many :classrooms
end
