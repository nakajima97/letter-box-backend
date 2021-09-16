class Store < ApplicationRecord
  has_many :employee
  has_many :message
  belongs_to :store_auth
end
