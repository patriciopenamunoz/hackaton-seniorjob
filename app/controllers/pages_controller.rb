class PagesController < ApplicationController
  def index
    redirect_to pages_empleos_path if user_signed_in?
  end

  def empleos
    redirect_to root_path if user_signed_in? == false
    @jobs = Job.all
  end

  def vista_empleos
    redirect_to root_path if user_signed_in? == false
    @job = Job.find(params[:id].to_i)
  end
end
