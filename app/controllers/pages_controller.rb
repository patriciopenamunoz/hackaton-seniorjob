class PagesController < ApplicationController
  def index
    if user_signed_in?
      if current_user.role == 'empleado'
        redirect_to pages_empleos_path
      else
        redirect_to jobs_path
      end
    end
  end

  def empleos
    if user_signed_in? == false
      if current_user.role == 'empleado'
        redirect_to root_path
      end
    end
    @jobs = Job.all
  end

  def vista_empleos
    if user_signed_in? == false
      if current_user.role == 'empleado'
        redirect_to root_path
      end
    end
    @job = Job.find(params[:id].to_i)
  end

  def list
    @job_id = params[:id].to_i
    @postulados = Postulation.where(job_id: @job_id)
  end
end
