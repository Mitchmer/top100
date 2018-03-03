class SongsController < ApplicationController
  before_action :set_artist, except: [:index, :show, :new, :create] # Reid put the except part in. Remove if it's broken.
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new

  end

  def edit
    
  end

  def create
    if @artist == nil
      Song.create(song_params)
      redirect_to songs_path
    else
      @song = @artist.songs.new(song_params)
      if @song.save
        redirect_to [@artist, @song]
      else
        render :new
      end
    end
  end

  def update
    if @song.update(song_params)
      redirect_to [@artist, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to artists _songs_path
  end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :sales, :genre, :artist_id)
  end


end

#comment
