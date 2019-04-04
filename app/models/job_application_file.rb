class JobApplicationFile < ApplicationRecord
  belongs_to :job_application
  belongs_to :job_application_file_type

  mount_uploader :content, DocumentUploader, mount_on: :content_file_name
  validates :content,
    file_size: { less_than: 2.megabytes },
    file_content_type: { allow: 'application/pdf' }

  validates :content, presence: true
  validates :job_application_file_type_id, uniqueness: {scope: :job_application_id}
end