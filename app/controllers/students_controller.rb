class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.required(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = set_student
  end

  def update
    @student = set_student
    @student.update(params.required(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = set_student
  end

  private

  def set_student
    Student.find(params[:id])
  end

end
