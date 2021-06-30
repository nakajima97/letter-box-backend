class Employee < ApplicationRecord
  belongs_to :store

  def self.search(store_id)
    if store_id
      Employee.where(store_id: store_id).select(:id, :first_name, :last_name)
    else
      nil
    end
  end
end
