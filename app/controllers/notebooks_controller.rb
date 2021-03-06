class NotebooksController < ApplicationController

    def index
        notebooks = Notebook.all
        render json: NotebookSerializer.new(notebooks)
    end

    def create
        notebook = Notebook.new(notebook_params)

        if notebook.save
            render json: notebook
        end
    end

    def show
        notebook = Notebook.find(params[:id])
        render json: notebook
    end

    def destroy
        notebook = Notebook.find(params[:id])
        notebook.destroy
    end

    private

    def notebook_params
        params.require(:notebook).permit(:title)
    end


end
