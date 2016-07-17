class ChoicesController < ApplicationController

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(secure_params)
    @comp_choice = Choice.new
    @result = Choice.new
    rock = params[:choice]
    @rock = @choice.rock
    paper = params[:choice]
    @paper = @choice.paper
    scissors = params[:choice]
    @scissors = @choice.scissors
    if @rock ==  "x"
      @comp_choice = @comp_choice.comp_choice
      @result = @result.compare("rock",@comp_choice)
      render 'choice_rock'
    elsif @paper == "x"
      @comp_choice = @comp_choice.comp_choice
       @result = @result.compare("paper",@comp_choice)
      render 'choice_paper'
    elsif @scissors == "x"
      @comp_choice = @comp_choice.comp_choice
      @result = @result.compare("scissors",@comp_choice)
      render 'choice_scissors'
    else
     render :new
    end
     
  end

  private

  def secure_params
    params.require(:choice).permit(:rock, :paper, :scissors)
  end

end