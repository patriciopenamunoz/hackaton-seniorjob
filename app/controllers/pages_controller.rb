class PagesController < ApplicationController
  def index
    redirect_to pages_empleos_path if user_signed_in?
  end

  def empleos
  end
end
