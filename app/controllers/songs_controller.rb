class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(params.require(:song))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song))

    redirect_to song_path(@song)
  end
end
