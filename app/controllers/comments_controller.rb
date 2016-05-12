class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentabke.comments.new(comment_params)
    @comment.user = current_user

    respond_to do |f|
      if @comment.save
        f.json { render json: { comment: @comment } }
      else
        f.json { render json: { comment: @comment.user }, notice: "Your comment !== Success" }
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end
end
