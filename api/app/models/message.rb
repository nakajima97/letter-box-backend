class Message < ApplicationRecord
  belongs_to :store
  belongs_to :employee
end
