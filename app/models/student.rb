class Student < ApplicationRecord
  include UuidGenerator

  belongs_to :classroom, optional: true
end
