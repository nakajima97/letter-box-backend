class Employee < ApplicationRecord
  belongs_to :store
  has_many :messager
end
