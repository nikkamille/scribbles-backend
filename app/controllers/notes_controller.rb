class NotesController < ApplicationController

    def index
        
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def note_params
        params.require(:note).permit(:title, :content, :date, :notebook_id)
    end


end
