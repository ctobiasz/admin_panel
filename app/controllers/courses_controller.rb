class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

 def create
  @course = Course.new(course_params)
  if @course.valid?
    @course.save
    redirect_to @course
  else
    render 'new'
 end
end

  def index
    @course = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path
  end

  def destroy
  @course = Course.find(params[:id])
  respond_to do |format|
    format.js
   end
   @course.destroy
   flash[:alert] = "Course Deleted"
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours, :cohort_id)
  end
end
