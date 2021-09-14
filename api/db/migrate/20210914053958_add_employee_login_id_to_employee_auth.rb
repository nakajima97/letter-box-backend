class AddEmployeeLoginIdToEmployeeAuth < ActiveRecord::Migration[6.1]
  def change
    add_column :employee_auths, :employee_login_id, :string, null: false
    add_index :employee_auths, :employee_login_id, unique: true
  end
end
