class TopsController < ApplicationController
    def index
        @top = 'top'
        @questions = Question.all()
    end
end
