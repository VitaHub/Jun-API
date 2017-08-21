class SongsController < ApplicationController
  before_action :preload_song, only: :destroy

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
    if @song.destroy
      render status: 200
    else
      render json: { error: 'The song was not deleted! Something went wrong.' },
             status: 400
    end
  end

  private

  def preload_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :author, :audio, :extension)
  end
end
