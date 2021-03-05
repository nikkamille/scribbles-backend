class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
    end

    def create
        note = Note.new(note_params)

        if note.save
            render json: note
        end
    end

    def show
        note = Note.find(params[:id])
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
    end

    private

    def note_params
        params.require(:note).permit(:title, :content, :date, :notebook_id)
    end


end
