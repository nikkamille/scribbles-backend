class NotebooksController < ApplicationController

    def index
        notebooks = Notebook.all
        render json: NotebookSerializer.new(notebooks).serializable_hash[:data].map{|hash| hash[:attributes]}
    end

    def create
        notebook = Notebook.new(notebook_params)

        if notebook.save
            render json: notebook
        else
            render json: {error: "Unable to create notebook."}
        end
    end

    def show
        notebook = Notebook.find(params[:id])
        render json: NotebookSerializer.new(notebook).serializable_hash[:data][:attributes]
    end

    def update
        notebook = Notebook.find(params[:id])
        notebook.update(notebook_params)
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
