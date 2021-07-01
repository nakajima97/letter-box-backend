class Api::V1::MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      render json: { message: "success" }
    else
      render json: { message: "failure" }
    end
  end

  private

  def message_params
    params.permit(:store_id, :employee_id, :message_text)
  end
end