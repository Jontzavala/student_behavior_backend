class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def create
        student = Student.new(student_params)
    end


    private

    def student_params
    end
end
