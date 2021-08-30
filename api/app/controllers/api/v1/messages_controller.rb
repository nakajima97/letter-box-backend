class Api::V1::MessagesController < ApplicationController
  def index
    employee_id_from_param = params[:employee_id]
    logger.debug('デバッグ仕込んだよ')
    logger.debug(@employee_id_from_param)
    if employee_id_from_param
      messages = Message.where(employee_id: employee_id_from_param)
      render status: 200, json: { data: messages }
    else
      messages = Message.all
      render status: 200, json: { data: messages }
    end
    
  end

  def create
    @message = Message.new(post_message_params)
    if @message.save
      render status: 201, json: { message: "success" }
    else
      render status: 400, json: { message: "failure" }
    end
  end

  private

  def post_message_params
    params.permit(:store_id, :employee_id, :message_text)
  end
end