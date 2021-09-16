class EmployeeAuth < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable,
          :jwt_authenticatable,
          :registerable,
          authentication_keys: [:employee_login_id],
          jwt_revocation_strategy: self

  has_one :employee

  # def self.find_for_database_authentication(warden_conditions)
  #   employee_login_id = warden_conditions[:employee_login_id].to_s.downcase.strip
  #   find_by(employee_login_id: employee_login_id)
  # end
end
