class Api::V1::EmployeesController < ApplicationController
  def search
    employees = Employee.search(params[:store_id])
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
