class Job < ActiveRecord::Base
  paginates_per 3
end
