class SongsController < ApplicationController
    before_action :find_song, only: [:show, :update, :edit]

     def index
        @songs = Song.all
    end

     def new
        @song = Song.new
    end

     def show

     end

     def create
        song = Song.create(songs_params)
        redirect_to song
    end

     def edit

     end

     def update
        @song.update(songs_params)
        redirect_to @song
    end

     private

     def find_song
        @song = Song.find(params[:id])
    end

     def songs_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end