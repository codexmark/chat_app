# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    @conversation = Conversation.find_by(id: params[:conversation_id])
    if @conversation
      # Crie um usuário provisório
      @user = User.find_or_create_by(username: SecureRandom.alphanumeric(8))
      session[:user_id] = @user.id
      session[:conversation_id] = @conversation.id
      redirect_to conversation_path(@conversation.id)
    else
      flash[:error] = "Conversa não encontrada"
      render :new
    end
  end
end