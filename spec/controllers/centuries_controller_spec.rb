require 'rails_helper'
require 'jsonm_matchers/rspec'

RSpec.describe CenturiesController, type: :controller do
  describe "GET show" do

    it "assigns century to @century" do
      get :show, id: century.to_param, format: :json
      expect(assigns(:century)).to eq century
    end
  end

  describe "GET index" do
    it "assigns all centuries to @centuries" do
      get :index, format: :json
      expect(assigns(:centuries)).to eq centuries
    end
  end

  describe "assign centuries to happenings" do
    it "assigns a century to a happening" do
      get :index, century_id: century_id, happening_id: happening_id, format: :json
      expect(assigns(:century_id)). to eq happening_id
  end

  describe "assign centuries to writtenimportances" do
    it "assigns a century to a writtenimportance" do
      get :index, century_id: century_id, writtenimportance_id: writtenimportance_id, format: :json
      expect(assigns(:century_id)). to eq writtenimportance_id
  end
end
