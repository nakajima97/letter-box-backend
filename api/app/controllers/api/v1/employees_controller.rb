class Api::V1::EmployeesController < ApplicationController
  def search
    store_id = params[:store_id]
    unless store_id
      return render status: 400, json: { message: "The store_id is not entered." }
    end

    employees = Employee.where(store_id: store_id).select(:id, :first_name, :last_name)

    if employees && employees.size > 0
      render json: {
        store_id: store_id.to_i,
        employees: employees
      }
    else
      render status: 200, json: {
        store_id: store_id.to_i,
        message: "No data"
      }
    end
  end
end
