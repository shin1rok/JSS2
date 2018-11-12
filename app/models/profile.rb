class Profile < ApplicationRecord
  belongs_to :job_seeker
  has_many :education_history
  has_many :work_history
end
