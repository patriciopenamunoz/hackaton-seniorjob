json.extract! job, :id, :title, :description, :schedule, :tag, :rent, :postulacion_id, :created_at, :updated_at
json.url job_url(job, format: :json)
