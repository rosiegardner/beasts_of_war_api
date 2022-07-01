require 'rails_helper'

describe "post a beast route", :type => :request do

  before do
    post '/beasts', params: { :daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 1, :desc => "test_desc"}
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

end