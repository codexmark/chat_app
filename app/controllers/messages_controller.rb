# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find_by(id: params[:id])
    @message = Message.create(conversation_id: @conversation.id, user_id: current_user.id, content: params[:message][:content])
    ActionCable.server.broadcast("conversation_#{@conversation.id}", message: @message.content, user: current_user.username)
    render json: { message: @message.content, user: current_user.username }
  end
end