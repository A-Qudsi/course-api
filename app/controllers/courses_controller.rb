class CoursesController < ApplicationController

     def index 
        @courses = Course.all 
        render json: @courses
    end

    def show
        @course = Course.find(params[:id])
        render json: @course 
    end

    def create
        @course = Course.new(course_params)

        if @course.save 
            render json: @course 
        else
            render json: @course.errors.full_messages, status: 422
        end

    end

    def update 
        @course = Course.find(params[:id])

        if @course.update(course_params)
            render json: @course
        else
            render json: @course.errors.full_messages, status: 422
        end

    end

    def destroy
        @course = Course.find_by(id: params[:id])

        if @course && @course.destroy 
            render json: @course 
        else 
            render json: @course.errors.full_messages, status: 422
        end

    end

    private

    def course_params
        params.require(:course).permit(:name, :release_date)
    end
end
