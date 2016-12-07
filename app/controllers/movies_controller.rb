class MoviesController < ApplicationController
  def new
  end
  def create
    @movie = Movie.new
    @movie.room_name= params[:room_name]
    @movie.detail = params[:detail]
    @movie.save
    redirect_to movie_path(@movie.id)
  end
  
  def index
    @movie = Movie.all
  end  
  
  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.room_name = params[:room_name]
    @movie.detail = params[:detail]
    @movie.save
    redirect_to movie_path(@movie.id)
  end
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
end
