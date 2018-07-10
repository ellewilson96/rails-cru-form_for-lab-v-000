class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(params.require(:genre))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre))

    redirect_to genre_path(@genre)
  end
end
