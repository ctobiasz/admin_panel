class InstructorsController < ApplicationController
  def new
    @instructor = Instructor.new
  end

  def create
   @instructor = Instructor.new(instructor_params)
   if @instructor.valid?
     @instructor.save
     redirect_to root_path
   else
     p @instructor.errors.messages
     render 'new'
  end
end

  def index
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
  end

  private

  def instructor_params
  params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education, :cohort_id)
  end
end
