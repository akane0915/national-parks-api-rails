require 'rails_helper'

DatabaseCleaner.start

describe "get all parks route", type: :request do
  let!(:parks) { FactoryGirl.create_list(:park, 10)}

  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end
end


describe "get specific park route", type: :request do
  DatabaseCleaner.clean
  park = FactoryGirl.create(:park)

  before { get "/parks/#{park['id']}"}

  it 'returns the word success' do
    expect(response.body).to include("Yellow Stone")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end
end

describe 'get exceptions', type: :request do
  let!(:parks) { FactoryGirl.create_list(:park, 10)}

  before { get '/parks/11' }

  it 'returns status code 404' do
    expect(response).to have_http_status 404
  end
end
