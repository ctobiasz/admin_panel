class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
   @student = Student.new(student_params)
   if @student.valid?
     @student.save
     flash[:notice] = "Student Account Created"
     redirect_to @student
   else
     p @student.errors.messages
     render 'new'
  end
end

  def index

    @student = Student.all

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
    redirect_to student_path
  end

  def destroy
  @student = Student.find(params[:id])
  respond_to do |format|
    format.js
   end
   @student.destroy
   flash[:alert] = "Student Deleted"
  end



  private

  def student_params
  params.require(:student).permit(:first_name, :last_name, :age, :education, :cohort_id)
  end
end
