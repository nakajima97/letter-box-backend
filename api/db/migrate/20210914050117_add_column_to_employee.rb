class AddColumnToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :employee_auth, foreign_key: true
  end
end
