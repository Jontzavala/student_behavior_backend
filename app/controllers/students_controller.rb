class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def show
        student = Student.find_by_id(params[:id])
        render json: student
    end

    def create
        student = Student.new(student_params)
        if student.save
            render json: student
        else
            render json: {error: "Couldn't save student"}
        end
    end

    def update
        student = Student.find_by_id(params[:id])
        if student.update(student_params)
            render json: student
        else
            render json: {error: "Couldn't update"}
        end
    end

    def destroy
        student = Student.find_by_id(params[:id])
        student.destroy
        render json: {message: "Student #{student.name} has left the class"}
    end


    private

    def student_params
        params.require(:student).permit(:name, :seat_number, :course_id, :course_name)
    end
end
