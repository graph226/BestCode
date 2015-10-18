class QuestionsController < ApplicationController

		def create
		    @question = Question.new(article_params)

				if @question.save
					redirect_to @question
				else
					render 'new'
				end
		end

		def new
		end

		def show
		    @question = Question.find(params[:id])
		end

		def index
		    @question = Question.all
		end

		private
		    def article_params
				    params.require(:question).permit(:title);
				end
end
