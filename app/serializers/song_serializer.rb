class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :extension

  def attributes(*args)
    args = super(*args)
    args[:audio_url] = object.audio.url
    args
  end
end
