class Store < ApplicationRecord
  has_many :employee
  has_many :message
end
