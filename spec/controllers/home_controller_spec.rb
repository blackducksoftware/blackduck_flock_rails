require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'home route' do
    it 'should render to home#index' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
