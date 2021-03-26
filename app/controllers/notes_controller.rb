class NotesController < ApplicationController

    def index
        if params[:notebook_id]
            notes = Notebook.find(params[:notebook_id]).notes
        else
            notes = Note.all
        end
        
        render json: NoteSerializer.new(notes).serializable_hash[:data].map{|hash| hash[:attributes]}
    end

    def create
        note = Notebook.find(params[:notebook_id]).notes.new(note_params)
        # note = notebook.notes.new(note_params)

        if note.save
            render json: note
        end
    end

    def show
        note = Note.find(params[:id])
        render json: NoteSerializer.new(note).serializable_hash[:data][:attributes]
    end

    def update
        # binding.pry
        note = Note.find(params[:id])
        note.update(title: params[:note][:title], content: params[:note][:content], date: params[:note][:date])
        render json: NoteSerializer.new(note).serializable_hash[:data][:attributes]
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
