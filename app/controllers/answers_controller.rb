class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end
  def create
    Answer.create! question_id: params[:question_id], text: params[:text]
    render text: "foo"
  end
end