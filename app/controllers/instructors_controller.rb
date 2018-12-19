class InstructorsController < ApplicationController
  def new
    @Instructor = Instructor.new
  end

  def create
   @Instructor = Instructor.new(student_params)
   if @Instructor.valid?
     @Instructor.save
     redirect_to root_path
   else
     render 'new'
  end
end

  def index
  end

  def show
    @Instructor = Instructor.find(params[:id])
  end

  def edit
  end

  private

  def student_params
  params.require(:Instructor).permit(:first_name, :last_name, :age, :salary, :education, :cohort_id)
  end
end
