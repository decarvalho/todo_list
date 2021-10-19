require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  describe 'GET #show' do
    let(:list) { create :list }

    it 'returns http_status ok' do
      get :show, params: { id: list.id }

      expect(response).to have_http_status :ok
    end
  end
end
