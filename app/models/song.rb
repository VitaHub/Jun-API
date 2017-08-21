class Song < ApplicationRecord
  validates :title, :author, :audio, :extension, presence: true
end
