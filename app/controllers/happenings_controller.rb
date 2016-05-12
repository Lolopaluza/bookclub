class HappeningController < ApplicationController

  def index
    @happenings = Happening.all

    respond_to do |f|
      f.json {render json: {happenings: @happenings} }
    end
  end

  def show
    @happening = Happening.find(params[:id])

    respond_to do |f|
      f.json {render json: {happening: @happenings} }
    end
  end
end
