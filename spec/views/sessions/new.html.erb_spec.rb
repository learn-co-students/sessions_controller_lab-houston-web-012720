require 'rails_helper'



RSpec.describe SessionsController, type: :controller do
  render_views
  describe 'post create' do
    it 'redirects to the login page if :name is nil' do
      post :create
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end
  end
end