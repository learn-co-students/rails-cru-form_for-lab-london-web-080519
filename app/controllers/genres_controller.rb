class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :edit, :update]

    def new
        @genre = Genre.new
    end

    def show 
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre.id)
    end

    def edit
    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre.id)
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end
end
