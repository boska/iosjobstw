class Job < ActiveRecord::Base
  paginates_per 3
  belongs_to :user
end
