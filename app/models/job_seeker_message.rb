class JobSeekerMessage < ApplicationRecord
  belongs_to :job_seeker
  belongs_to :company
end
