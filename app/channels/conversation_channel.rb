# app/channels/conversation_channel.rb
class ConversationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "conversation_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = Message.create(conversation_id: params[:id], user_id: current_user.id, content: data['message'])
    ActionCable.server.broadcast("conversation_#{params[:id]}", message: message.content, user: current_user.username)
  end
end