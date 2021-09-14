class Employee < ApplicationRecord
  belongs_to :store
  belongs_to :employee_auth
  has_many :messager
end
