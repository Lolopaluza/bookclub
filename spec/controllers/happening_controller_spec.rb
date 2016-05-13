require 'rails_helper'

RSpec.describe HappeningController, type: :controller do
  describe "GET show" do

    it "assigns happening to @happening" do
      get :show, id: happening.to_param, format: :json
      expect(assigns(:happening)).to eq happening
    end
  end

  describe "GET index" do
    it "assigns all happening to @happening" do
      get :index, format: :json
      expect(assigns(:happening)).to eq happening
    end
  end

end
