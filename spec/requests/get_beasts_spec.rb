require 'rails_helper'

describe "get all beasts route", :type => :request do
  let!(:beasts) { FactoryBot.create_list(:beast, 60)}

  before { get '/beasts' }

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns all beasts' do
    expect(JSON.parse(response.body).size).to eq(60)
  end

  it 'returns one beast' do
    get '/beasts/1'
    expect(JSON.parse(response.body).size).to eq(1)
  end
end