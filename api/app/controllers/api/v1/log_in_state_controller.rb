class Api::V1::LogInStateController < ApplicationController
  def check
    if current_store_auth
      render json: { type: "store" }
    elsif current_employee_auth
      render json: { type: "employee" }
    else
      render json: { type: "none" }
    end
  end

  def login_user_id
    if current_store_auth
      render json: { user_id: current_store_auth.store.id }
    elsif current_employee_auth
      render json: { user_id: current_employee_auth.employee.id }
    else
      render json: { data: "none" }
    end
  end
end
