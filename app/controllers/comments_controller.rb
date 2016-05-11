class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentabke.comments.new comment_params
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable, notice: "Your comment === Success!" }
        format.json { render json: { comment: @comment } }
      else
        format.html { notice: "Your comment !== Success" }
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end
end
