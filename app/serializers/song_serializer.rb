class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :audio, :extension
end
