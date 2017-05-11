class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :edit, :create, :show, :update, :destroy]
  protect_from_forgery with: :exception

  # Set user for navigation bar -- FIX THIS
  before_action :set_user
    def set_user
      @user = current_user
    end
end
