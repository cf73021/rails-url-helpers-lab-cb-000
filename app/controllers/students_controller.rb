class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.set_status
    redirect_to @student

  private

    def set_student
      @student = Student.find(params[:id]).to_s
    end
end
