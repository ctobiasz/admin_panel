class CohortsController < ApplicationController
  def new
    @cohort = Cohort.new
  end

  def create
   @cohort = Cohort.new(cohort_params)
   if @cohort.valid?
     @cohort.save
     redirect_to root_path
   else
     render 'new'
  end
end

  def index
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def edit
  end

  private

  def cohort_params
  params.require(:cohort).permit(:name, :start_date, :end_date, :hours, :student_id, :instructor_id, :course_id)
  end
end
