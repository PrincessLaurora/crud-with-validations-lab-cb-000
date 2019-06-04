class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    if @song.save
        redirect_to song_path(@song)
      else
        render :new
      end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @post.update(post_params)
    if @post.valid?
        @post.save
        redirect_to post_path(@post)
      else
        render :edit
      end
  end

  private

 def songs_params
   params.permit(:title, :category, :content)
 end
end


end
