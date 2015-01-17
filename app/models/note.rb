class Note < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader

  belongs_to :faculty
  belongs_to :subject
  belongs_to :department
end
