require 'gipherator'

class GifsController < ApplicationController
include Gipherator 

def index
  @gifs = Gif.all
end

def new
  @gif = Gif.new
end

def create
  @gif = Gif.new(gif_params)
  find_giphy(@gif)

  if @gif.save
    redirect_to gif_path(@gif)
  else
    render :new
  end
end

def show
  @gif = Gif.find(params[:id])
end

def edit
  @gif = Gif.find(params[:id])
end

def update
  @gif = Gif.find(params[:id])
  if @gif.update(gif_params)
    redirect_to gif_path(@gif)
  else
    render :edit
  end
end

def destroy
  @gif = Gif.find(params[:id])
  @gif.destroy
  redirect_to gifs_path
end

def gif_params
  params.require(:gif).permit(:search_terms, :url)
end


end
