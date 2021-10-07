class CoursesController < ApplicationController
    def index
        courses = Course.all
        render json: courses
    end

    def show
        course = Course.find_by_id(params[:id])
        render json: course
    end

    def create
        course = Course.new(course_params)
        if course.save
            render json: course
        else
            render json: {error: "Couldn't save course"}
        end
    end

    def update
        course = Course.find_by_id(params[:id])
        if course.update(course_params)
            render json: course
        else
            render json: {error: "Couldn't update"}
        end
    end

    def destroy
        course = Course.find_by_id(params[:id])
        course.destroy
        render json: {error: "Couldn't update"}
    end

    private

    def course_params
        params.require(:course).permit(:name)
    end

end
