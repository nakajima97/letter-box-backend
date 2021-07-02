class Api::V1::MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      render status: 201, json: { message: "success" }
    else
      render status: 400, json: { message: "failure" }
    end
  end

  private

  def message_params
    params.permit(:store_id, :employee_id, :message_text)
  end
end