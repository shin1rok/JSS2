class CompanyMessage < ApplicationRecord
  belongs_to :company
  belongs_to :job_seeker
end
