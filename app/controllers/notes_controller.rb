class NotesController < ApplicationController
    
    def index
        @notes = Note.all
        render json: @notes
    end

    def show
        @note = Note.find(params[:id])
        render json: @note
    end

    def create
    end

    def update
    end

    private
    def user_params
        params.require(:note).permit(:title, :content)
    end

end