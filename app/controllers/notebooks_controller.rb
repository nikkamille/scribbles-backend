class NotebooksController < ApplicationController

    def index
        @notebooks = Notebook.all
        render json: @notebooks
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def notebook_params
        params.require(:notebook).permit(:title)
    end


end
