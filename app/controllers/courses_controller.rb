class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

 def create
  @course = Course.new(course_params)
  if @course.valid?
    @course.save
    redirect_to root_path
  else
    render 'new'
 end
end

  def index
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours, :cohort_id)
  end
end
