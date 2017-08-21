class SongsController < ApplicationController
  def index
    render json: Song.all
  end

  def create
    song = Song.new(song_params)
    if song.save
      render json: song, status: 201
    else
      render json: song.errors.messages, status: 400
    end
  end

  def destroy
    render json: { status: 'not done yet' }
  end

  private

  def song_params
    params.require(:song).permit(:title, :author, :audio, :extension)
  end
end
