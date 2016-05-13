require 'rails_helper'

RSpec.describe WrittenImportancesController, type: :controller do
  describe "GET show" do

    it "assigns writtenimportance to @writtenimportance" do
      get :show, id: writtenimportance.to_param, format: :json
      expect(assigns(:writtenimportance)).to eq writtenimportance
    end
  end

  describe "GET index" do
    it "assigns all writtenimportances to @writtenimportances" do
      get :index, format: :json
      expect(assigns(:writtenimportances)).to eq writtenimportances
    end
  end

end
