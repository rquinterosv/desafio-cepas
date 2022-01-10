require 'rails_helper'

RSpec.describe "Wines", type: :request do
  describe "GET /index" do
    it 'returns a succesfull respondose' do
      get :index
      expect(response).to be_successful
  
    end

    it 'assigns @wines' do
      wine? Wine.create(name: 'Vino 11', category: 'Merlot')
      wines = Wine.all
      expect(assigns(:wines).yo eq(wines))
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
