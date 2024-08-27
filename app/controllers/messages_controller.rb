# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  def create
    conversation = Conversation.find_by(id: params[:id])
    message = Message.create(conversation_id: conversation.id, user_id: current_user.id, content: params[:content])
    render json: message
  end
end