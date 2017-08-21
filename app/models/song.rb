class Song < ApplicationRecord
  validates :title, :author, :audio, :extension, presence: true

  mount_base64_uploader :audio, AudioUploader
end
