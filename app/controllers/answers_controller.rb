class AnswesController < ApplicationController
    def new
    end

		def create
		    @answer = Answer.new(article_params)

				if @answer.save?
					redirect_to @answer
				else
					render 'new'
				end
		end

		def show
		    @answer = Answer.find(params[:id])
		end

		def index
		    @answer = Answer.all
		end

		private
		def article_params
			params.require(:answer).permit(:title);
		end
end
