class SongsController < ApplicationController
  def index
    @songs = songs.all
  end

  def show
    @song = songs.find(params[:id])
  end

  def new
    @song = songs.new
  end

  def edit
    @song = songs.find(params[:id])
  end

  def create
    @song = songs.new(params[:song])

    if @song.save
      redirect_to(@song,
                  notice: 'Song was created like a boss')
    else
      render action: 'new'
    end
  end

  def update
    @song = songs.find(params[:song])

    if @song.update_attributes(params[:song])
      redirect_to(@song,
                  notice: 'Song was updated like a boss')
    else
      render action: 'edit'
    end
  end

  def destroy
    Song.find(params[:id]).destroy
    redirect_to(songs_url)
  end

  private

  def songs
    @album ? @album.songs : Song
  end

  def album
    @album ||= Album.find(params[:album_id]) if params[:album_id]
  end
  helper_method :album
end
