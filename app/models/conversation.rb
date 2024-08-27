# app/models/conversation.rb
class Conversation < ApplicationRecord
    has_many :messages
  end
  
  # app/models/message.rb
  class Message < ApplicationRecord
    belongs_to :conversation
    belongs_to :user
  end