class Api::V1::EmployeesController < ApplicationController
  def search
    store_id = params[:store_id]
    unless store_id
      return render json: { message: "The store_id is not entered." }
    end

    employees = Employee.search(store_id)

    if employees && employees.size > 0
      render json: {
        id: params[:store_id],
        employees: employees
      }
    else
      render json: {message: "no data"}
    end
  end
end
