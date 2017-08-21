class SongsController < ApplicationController
  def index
    render json: Song.all
  end

  def create
    render json: { status: 'not done yet' }
  end

  def destroy
    render json: { status: 'not done yet' }
  end
end
