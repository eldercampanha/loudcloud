class SongsController < ApplicationController

def index
   @songs = Song.all.order('title ASC')
end


  def update
    @song.update(song_params)

    if @song.save
      redirect_to root_url, notice: 'Updated task'
    else
      render 'edit'
    end
  end

  def song_params
    params.require(:song).permit(:title, :song_id)
  end
end
