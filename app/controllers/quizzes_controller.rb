class QuizzesController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    # byebug
    @quiz = @course.quizzes.new
    # raise
  end

  def create
    @course = Course.find(params[:course_id])
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to course_path(@course)
    else
      render :new
    end  
  end

  def edit
    @course = Course.find(params[:id])
    @quiz = Quiz.find(params[:course_id])
  end

  def update
    @course = Course.find(params[:course_id])
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to course_path(@course)
    else 
      render :edit 
    end  
  end  

  def destroy
    @course = Course.find(params[:course_id])
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
      redirect_to course_path(@course)  
  end  


private

  def quiz_params
      params.require(:quiz).permit(:title, :points_pos, :point_earned, :grade_earned, :course_id)
  end
end