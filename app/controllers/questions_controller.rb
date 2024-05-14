class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = "I don't care, get dressed and go to work!"
    if params[:yourAnswer].capitalize == 'I am going to work'
      @answer = 'Great!'
    end
    if params[:yourAnswer][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    end
  end
end
