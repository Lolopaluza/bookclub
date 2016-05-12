class CenturiesController < ApplicationController

  def index
    @centuries = Century.all

    respond_to do |f|
      f.json {render json: {centuries: @centuries} }
    end
  end

  def show
    @century = Century.find( params[:id] )

    respond_to do |f|
      f.json {render json: {century: @century} }
  end
end
