class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:index, :new, :edit, :create, :show, :update, :destroy]
  protect_from_forgery with: :exception
end
