class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params.require(:artist))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist))

    redirect_to artist_path(@artist)
  end
end
