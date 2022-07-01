require 'rails_helper'

describe "get all beasts route", :type => :request do
  let!(:beasts) { FactoryBot.create_list(:beast, 60)}

  before { get '/beasts' }

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end