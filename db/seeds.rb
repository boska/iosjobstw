# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
h = {"job_title"=>"Rails/iOS/Android/Art 夥伴", "company_name"=>"RRR", "url"=>"http://google.com", "job_type"=>"1", "location"=>"Remote", "description"=>"TEST", "apply"=>"TEST"}
50.times do
  Job.create(h)
end
