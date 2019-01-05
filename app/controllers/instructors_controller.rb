class InstructorsController < ApplicationController
  def new
    @instructor = Instructor.new
  end

  def create
   @instructor = Instructor.new(instructor_params)
   if @instructor.valid?
     @instructor.save
     redirect_to @instructor
   else
     p @instructor.errors.messages
     render 'new'
  end
end

  def index
    @instructor = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])

  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    redirect_to instructor_path
  end

  def destroy
  @instructor = Instructor.find(params[:id])
  respond_to do |format|
    format.js
   end
   @instructor.destroy
   flash[:alert] = "Instructor Deleted"
  end

  private

  def instructor_params
  params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education, :cohort_id)
  end
end
