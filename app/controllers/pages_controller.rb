class PagesController < ApplicationController
  def index
    redirect_to pages_empleos_path if user_signed_in?
  end

  def empleos
    @jobs = Job.all
  end

  def vista_empleos
    @job = Job.find(params[:id].to_i)
  end
end
