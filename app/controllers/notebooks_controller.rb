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
            render json: {error: "Unable to create notebook. Title can't be empty."}
        end
    end

    def show
        notebook = Notebook.find(params[:id])
        render json: NotebookSerializer.new(notebook).serializable_hash[:data][:attributes]
    end

    def update
        binding.pry
        notebook = Notebook.find(params[:id])
        notebook.update(title: params[:notebook][:title])
        notebook.save
        render json: NotebookSerializer.new(notebook).serializable_hash[:data][:attributes]
    end

    def destroy
        notebook = Notebook.find(params[:id])
        notebook.destroy
    end

    private

    def notebook_params
        params.require(:notebook).permit(:id, :title)
    end


end
