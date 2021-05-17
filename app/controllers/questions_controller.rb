class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @blank = "I didn't hear you"
    elsif @question == 'I am going to work'
      @question = "You asked: #{@question}"
      @answer = 'Great!'
    elsif @question.last == '?'
      @question = "You asked: #{@question}"
      @answer = 'Silly question, get dressed and go to work!'
    else
      @question = "You asked: #{@question}"
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
