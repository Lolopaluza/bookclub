class WrittenImportancesController < ApplicationController
  mount_uploader :image, ImageUploader

  def index
    @written_importances = WrittenImportances.all

    respond_to do |f|
      f.html
      f.json { render json: { written_importances: @written_importances } }
    end
  end

  def show
    @written_importances = WrittenImportances.find( params[:id] )

    respond_to do |f|
      f.html
      f.json { render json: { written_importances: @written_importances } }
    end
  end
end
