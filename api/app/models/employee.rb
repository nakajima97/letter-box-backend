class Employee < ApplicationRecord
  belongs_to :store
  has_many :message

  def self.search(store_id)
    if store_id
      Employee.where(store_id: store_id).select(:id, :first_name, :last_name)
    else
      nil
    end
  end

  def self.find(employee_id)
    if employee_id
      Employee.where(employee_id: employee_id)
    else
      nil
    end
  end
end
