class ExercisesController < ApplicationController
 
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(params[:exercise].permit(:title, :task))
    if @exercise.save
      redirect_to @exercise
    else 
      render 'new'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def index
    @exercises = Exercise.all
  end

end