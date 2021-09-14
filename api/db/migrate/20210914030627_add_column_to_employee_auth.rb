class AddColumnToEmployeeAuth < ActiveRecord::Migration[6.1]
  def change
    add_column :employee_auths, :jti, :string, null: false
    add_index :employee_auths, :jti, unique: true
  end
end
