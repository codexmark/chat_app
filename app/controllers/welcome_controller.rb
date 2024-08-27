# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  def index
  end

  def create
    @user = User.find_or_create_by(username: params[:username])
    session[:user_id] = @user.id
    @conversation = Conversation.find_by(id: params[:conversation_id])
    if @conversation
      session[:conversation_id] = @conversation.id
      redirect_to conversation_path(@conversation.id)
    else
      flash[:error] = "Conversa não encontrada"
      render :index
    end
  end
end