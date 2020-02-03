class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  # NOTE(rstankov): Disable for purposes of this showcase
  # protect_from_forgery with: :exception
end
