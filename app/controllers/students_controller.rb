class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
    end 

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update 
        @student = Student.find(params[:id])
        @student.title = params[:title]
        @student.room_number = params[:room_number]
        @student.save
    end
end