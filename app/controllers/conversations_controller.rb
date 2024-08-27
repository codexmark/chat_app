# app/controllers/conversations_controller.rb
class ConversationsController < ApplicationController
  def create
    conversation = Conversation.create(id: SecureRandom.alphanumeric(8), participants: 0)
    render json: { id: conversation.id }
  end

  def show
    @conversation = Conversation.find_by(id: params[:id])
    render json: @conversation
  end

  def destroy
    conversation = Conversation.find_by(id: params[:id])
    conversation.destroy if conversation && conversation.created_at < 8.hours.ago
    head :no_content
  end
end