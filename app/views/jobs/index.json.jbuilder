json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :company_name, :url, :job_type, :location, :description, :deadline
  json.url job_url(job, format: :json)
end
