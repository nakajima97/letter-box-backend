class Api::V1::StoresController < ApplicationController
  def search
    keyword = params[:keyword]
    unless keyword
      return render status: 400, json: {message: "The keyword is not entered."}
    end
    stores = Store.search(keyword)

    if stores && stores.size > 0
      render json: { data: stores }
    else
      render json: { message: "No data" }
    end
  end
end
