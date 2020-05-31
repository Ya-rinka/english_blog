class CommentsController < ApplicationController

   # http_basic_authenticate_with name: "admin", password: "123"

    def create
        @teacher = Teacher.find(params[:teacher_id])
        @comment = @teacher.comments.create(comment_params)
        redirect_to teacher_path(@teacher)
    end

    private def comment_params
        params.require(:comment).permit(:user, :comment)
    end
end
