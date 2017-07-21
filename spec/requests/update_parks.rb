require 'rails_helper'

describe 'update a park', type: :request do
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

  it 'updates name of park from the api database' do
    patch '/parks/1', params: { name: "new name" }
    expect(JSON.parse(response.body)['name']).to eq "new name"
  end

  it 'returns a succes message message' do
    expect(response.body).to include("Your park has been updated!")
  end
end
