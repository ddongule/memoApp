class Post < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  # Tells rails to use this uploader for this model.
  validates :title, presence: true
  # Make sure the title is present.

  has_many :comments
  paginates_per 5


end
