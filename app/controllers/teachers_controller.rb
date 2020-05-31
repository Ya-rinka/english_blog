class TeachersController < ApplicationController

   before_action :authenticate_user!, except: [:index, :show]

    def index
        @teacher = Teacher.all
    end

    def new
        @teacher = Teacher.new
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        @teacher = Teacher.find(params[:id])
        if(@teacher.update(teacher_params))
            redirect_to @teacher
        else
            render 'edit'
        end
    end

    def destroy
        @teacher = Teacher.find(params[:id])
        @teacher.destroy
        redirect_to 'teachers_path'
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
