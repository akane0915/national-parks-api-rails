require 'rails_helper'

describe "get all parks route", type: :request do

  let!(:parks) { FactoryGirl.create_list(:park, 10)}

  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end


  it 'returns all parks by name' do
    get '/parks?name=yellow'
    output = JSON.parse(response.body).first
    expect(output.fetch("name")).to eq 'Yellow Stone'
  end

  it 'returns all parks by year' do
    get '/parks?year=1800'
    output = JSON.parse(response.body).first
    expect(output.fetch("year")).to eq 1800
  end
end


describe "get specific park route", type: :request do
  it 'includes the park name in the response' do
    park = FactoryGirl.create(:park)
    get "/parks/#{park['id']}"
    expect(response.body).to include("Yellow Stone")
  end
end

describe 'get exceptions', type: :request do
  let!(:parks) { FactoryGirl.create_list(:park, 10)}

  before { get '/parks/11' }

  it 'returns status code 404' do
    expect(response).to have_http_status 404
  end
end
