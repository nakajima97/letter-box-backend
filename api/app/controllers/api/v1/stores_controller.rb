class Api::V1::StoresController < ApplicationController
  def search
    stores = Store.search(params[:keyword])
    if stores
      render json: {data: stores}
    else
      render status: 400, json: {message: "no data"}
    end
  end
end
