class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
    end

    def destroy
    end

    private comment_params
    params.require(:comment).permit(:body)
end
