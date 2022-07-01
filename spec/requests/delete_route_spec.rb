require 'rails_helper'

describe 'destroy a beast route', :type => :request do

  before do
    post '/beasts', params: { :daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 666, :desc => "a good dog"}
    @beast_id = JSON.parse(response.body)['id']
    delete "/beasts/#{@beast_id}"
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end