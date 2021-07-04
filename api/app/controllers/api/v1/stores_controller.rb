class Api::V1::StoresController < ApplicationController
  def index
    if params[:count]
      stores = Store.all.limit(params[:count].to_i).select(:id, :name)
    else
      stores = Store.all.select(:id, :name)
    end
    
    render json: { 
      message: "success",
      data: stores
    }
  end

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
