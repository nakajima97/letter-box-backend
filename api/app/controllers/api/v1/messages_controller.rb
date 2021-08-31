class Api::V1::MessagesController < ApplicationController
  def index
    employee_id_from_param = params[:employee_id]
    if employee_id_from_param
      messages = Message.where(employee_id: employee_id_from_param)
    else
      messages = Message.all
    end

    if messages.count == 0
      render status: 200, json: { message: "No data" }
    else
      render status: 200, json: { message: "Success", data: messages }
    end
  end

  def create
    @message = Message.new(post_message_params)
    if @message.save
      render status: 201, json: { message: "Success" }
    else
      render status: 400, json: { message: "Failure" }
    end
  end

  private

  def post_message_params
    params.permit(:store_id, :employee_id, :message_text)
  end
end