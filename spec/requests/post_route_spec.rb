require 'rails_helper'

describe "post a beast route", :type => :request do

  before do
    post '/beasts', params: { :daemon => 'hellhound', :breed => "test_breed", :name => "test_name", :age => 1, :desc => "test_desc"}
  end

  it 'returns the beasts daemon' do
    expect(JSON.parse(response.body)['daemon']).to eq('hellhound')
  end

  it 'returns the beasts breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

end