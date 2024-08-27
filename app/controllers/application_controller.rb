# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
    before_action :set_current_user
  
    private
  
    def set_current_user
      @current_user = User.find_or_create_by(username: SecureRandom.alphanumeric(8))
    end
  
    def current_user
      @current_user
    end
  
    helper_method :current_user
  end