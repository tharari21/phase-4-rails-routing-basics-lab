class StudentsController < ApplicationController
    def index
        render json: Student.all
    end
    def grades
        render json: Student.all.order(grade: :desc)
    end
    def highest_grade
        render json: Student.order(grade: :desc).first
    end
end
