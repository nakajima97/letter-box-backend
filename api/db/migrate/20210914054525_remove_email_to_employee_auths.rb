class RemoveEmailToEmployeeAuths < ActiveRecord::Migration[6.1]
  def change
    remove_index :employee_auths, :email
    remove_column :employee_auths, :email, :string
  end
end
