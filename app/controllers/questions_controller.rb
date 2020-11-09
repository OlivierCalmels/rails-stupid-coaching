# QuestionsController
class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    if @question
      if @question == 'I am going to work'
        @answer = "GREAT!"
      elsif @question.slice(-1).chr == '?'
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      @answer
    end

  end
end
    #  def coach_answer_enhanced(your_message)
    #    answer = coach_answer(your_message)
    #    case your_message
    #    when "I AM GOING TO WORK RIGHT NOW!"
    #      coach_mess = ""
    #    when your_message.upcase
    #      coach_mess = "I can feel your motivation! #{answer}"
    #    else
    #      coach_mess = answer
    #    end
    #    return coach_mess
    #  end
