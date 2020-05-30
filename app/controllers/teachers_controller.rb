class TeachersController < ApplicationController

    def index
        @teacher = Teacher.all
    end

    def new
        @teacher = Teacher.new
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def create
       # render plain: params[:teacher].inspect
       @teacher = Teacher.new(teacher_params)
       if(@teacher.save)
        redirect_to @teacher
       else
        render 'new'
       end
    end

    private def teacher_params
        params.require(:teacher).permit(:name, :description)
    end
 

end
