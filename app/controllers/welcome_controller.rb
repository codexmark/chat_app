# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  def index
  end

  def create
    @user = User.find_or_create_by(username: params[:username])
    session[:user_id] = @user.id

    # Buscar conversa pelo ID
    @conversation = Conversation.find_or_create_by(id: params[:conversation_id])

    # Se a conversa for nova, inicializar os participantes
    if @conversation.new_record?
      @conversation.participants = 0
      @conversation.save
    end

    session[:conversation_id] = @conversation.id
    redirect_to conversation_path(@conversation.id)
  end
end