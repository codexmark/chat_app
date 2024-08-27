# app/models/conversation.rb
class Conversation < ApplicationRecord
  has_many :messages
end