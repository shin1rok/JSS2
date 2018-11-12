class JobSeeker < User
  has_one :profile, dependent: :destroy
  has_one :resume
  has_many :job_seeker_message
  has_many :company_message
end
