class Company < ApplicationRecord
  has_many :recruiter
  has_many :job_offer
  has_many :company_message
  has_many :job_seeker_message
end
