class Company < ApplicationRecord
  include UuidGenerator

  has_many :offers
end
