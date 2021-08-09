class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer == 'I am going to work right now!'
      return @coach_answer = ''
    elsif @answer.include?('?')
      return @coach_answer = 'Silly question, get dressed and go to work!'
    else
      return @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
