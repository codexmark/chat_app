# app/models/message.rb
class Message < ApplicationRecord
    belongs_to :conversation
    belongs_to :user
  end