class TeachersController < ApplicationController

    def index
    end

    def new
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def create
       # render plain: params[:teacher].inspect
       @teacher = Teacher.new(teacher_params)
       @teacher.save
       redirect_to @teacher
    end

    private def teacher_params
        params.require(:teacher).permit(:name, :description)
    end
 

end
