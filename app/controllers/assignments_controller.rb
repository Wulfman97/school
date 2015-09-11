class AssignmentsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @assignment = @course.assignments.new
  end

  def create
    @course = Course.find(params[:course_id])
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      redirect_to course_path(@course)
    else
      render :new
    end  
  end

  def edit
    @course = Course.find(params[:id])
    @assignment = Assignment.find(params[:course_id])
  end

  def update
    @course = Course.find(params[:course_id])
    @assignment = Assignment.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to course_path(@course)
    else 
      render :edit 
    end  
  end

  def destroy
    @course = Course.find(params[:course_id])
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
      redirect_to course_path(@course)  
  end  

  private

  def assignment_params
      params.require(:assignment).permit(:title, :points_pos, :point_earned, :grade_earned, :course_id)
  end

end
