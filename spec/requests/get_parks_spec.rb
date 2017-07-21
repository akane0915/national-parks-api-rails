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

DatabaseCleaner.clean

describe "get specific park route", type: :request do
  let!(:parks) { FactoryGirl.create(:park)}

  before { get '/parks/1'}

  it 'returns park with id 1' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end
end
