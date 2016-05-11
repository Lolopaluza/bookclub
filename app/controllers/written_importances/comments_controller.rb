class WrittenImportances::CommentsController < CommentsController
before_action :set_commentable

  private

    def set_commentable
      @commentable = WrittenImportance.find(params[:happening_id])
    end

end
