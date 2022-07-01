require 'rails_helper'

describe 'update a beast route', :type => :request do

  before do
    post '/beasts/', params: { :daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 666, :desc => "a good dog"}
    @beast_id = JSON.parse(response.body)['id']
    patch "/beasts/#{@beast_id}", params: { :daemon => 'shadow cat', :breed => "wicked lady", :name => "haxan", :age => 66, :desc => "a demonic cat"}
    get "/beasts/#{@beast_id}"
  end

  it 'updates the beasts daemon' do
    puts(response.body)
    expect(JSON.parse(response.body)['daemon']).to eq('shadow cat')
  end

  it 'updates the beasts breed' do
    puts(response.body)
    expect(JSON.parse(response.body)['breed']).to eq('wicked lady')
  end

  it 'updates the beasts name' do
    puts(response.body)
    expect(JSON.parse(response.body)['name']).to eq('haxan')
  end

  it 'updates the beasts age' do
    puts(response.body)
    expect(JSON.parse(response.body)['age']).to eq(66)
  end

  it 'updates the beasts desc' do
    puts(response.body)
    expect(JSON.parse(response.body)['desc']).to eq('a demonic cat')
  end

  it 'returns a success message' do
    expect(response).to have_http_status(:success)
  end

  it 'returns a success message' do
    patch "/beasts/#{@beast_id}" , params: { :daemon => 'shadow cat', :breed => "wicked lady", :name => "haxan", :age => 666, :desc => "a demonic cat" }
    puts(response.body)
    expect(JSON.parse(response.body)['message']).to eq('This beast has been updated successfully!')
  end

  it 'returns a success message status' do
    patch "/beasts/#{@beast_id}" , params: { :daemon => 'shadow cat', :breed => "wicked lady", :name => "haxan", :age => 666, :desc => "a demonic cat" }
    expect(response).to have_http_status(:success)
  end
end
