class NotebooksController < ApplicationController

    def index

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
