class PostulationController < ApplicationController
  before_action :authenticate_user!
    def create
      @job = Job.find(params[:job_id])
      @postulation = Postulation.find_or_create_by(job: @job, user: current_user )
      if @postulation.check == true
      @postulation.update(task: @job, user: current_user, check: false )
      else
      @postulation.update(task: @job, user: current_user, check: true )
      end
      if @job.save
        redirect_to user_tasks_path, notice: 'Tarea ingresada'
      else
        redirect_to tasks_path, alert: 'Tarea no ingresada'
      end
    end


  def index
    @postulation = current_user.postulations.where(check: true)
  end

  end
