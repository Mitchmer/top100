class SongsController < ApplicationController
  before_action :set_artist, except: [:index, :show] # Reid put the except part in. Remove if it's broken.
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
    
  end

  def new
    @song = @artist.songs.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
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
    redirect_to atrist_songs_path
  end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :sales, :genre)
  end

  private

  def set_song 
    
      @artist = Artist.find(params[:artist_id])
<<<<<<< HEAD
    }
=======
  end

    def song_params
      
      params.require(:song).permit(:title, :sales)

    end
>>>>>>> create song controller
end

#comment
