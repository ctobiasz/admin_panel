class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
   @student = Student.new(student_params)
   if @student.valid?
     @student.save
     redirect_to root_path
   else
     p @student.errors.messages
     render 'new'
  end
end

  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])

  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to root_path
  end

  private

  def student_params
  params.require(:student).permit(:first_name, :last_name, :age, :education, :cohort_id)
  end
end
