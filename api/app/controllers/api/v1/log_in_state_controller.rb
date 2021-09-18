class Api::V1::LogInStateController < ApplicationController
  def check
    if current_store_auth
      render json: { message: "store" }
    elsif current_employee_auth
      render json: { messega: "employee" }
    else
      render json: { message: "none" }
    end
  end
end
