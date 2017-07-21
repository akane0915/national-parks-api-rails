require 'rails_helper'

describe 'post parks', type: :request do
  park = FactoryGirl.build(:park)

  before do
    post '/parks', params: {
      name: park.name,
      sq_miles: park.sq_miles,
      state: park.state,
      year: park.year,
      fauna: park.fauna
     }
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(201)
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq park.name
  end

  it 'returns the park sq_miles' do
    expect(JSON.parse(response.body)['sq_miles']).to eq park.sq_miles
  end

  it 'returns the park state' do
    expect(JSON.parse(response.body)['state']).to eq park.state
  end

  it 'returns the park year' do
    expect(JSON.parse(response.body)['year']).to eq park.year
  end

  it 'returns the park fauna' do
    expect(JSON.parse(response.body)['fauna']).to eq park.fauna
  end



  describe 'post exception handlers', type: :request do
    park = FactoryGirl.build(:park)

    before do
      post '/parks', params: {
        name: '',
        sq_miles: park.sq_miles,
        state: park.state,
        year: park.year,
        fauna: park.fauna
      }
    end

    it 'returns error code 422' do
      expect(response).to have_http_status :unprocessable_entity
    end
  end

end
