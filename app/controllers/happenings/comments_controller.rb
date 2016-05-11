class Happenings::CommentsController < CommentsController
before_action :set_commentable

  private

    def set_commentable
      @commentable = Happening.find(params[:happening_id])
    end

end
