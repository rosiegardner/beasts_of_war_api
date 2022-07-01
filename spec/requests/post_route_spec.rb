require 'rails_helper'

describe "post a beast route", :type => :request do

  before do
    post '/beasts', params: { :daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 666, :desc => "a good dog"}
  end

  it 'returns the beasts daemon' do
    expect(JSON.parse(response.body)['daemon']).to eq('hellhound')
  end

  it 'returns the beasts breed' do
    expect(JSON.parse(response.body)['breed']).to eq('red_witch')
  end

  it 'returns the beasts name' do
    expect(JSON.parse(response.body)['name']).to eq('hex')
  end

  it 'returns the beasts age' do
    expect(JSON.parse(response.body)['age']).to eq(666)
  end

  it 'returns the beasts description' do
    expect(JSON.parse(response.body)['desc']).to eq('a good dog')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end