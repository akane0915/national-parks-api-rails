require 'rails_helper'

describe 'delete park', type: :request do
  before do
    FactoryGirl.reload
  end

  let!(:parks) { FactoryGirl.create_list(:park, 10)}

  before { post '/parks' }

  it 'deletes a park from the api database' do
    delete '/parks/1'
    get '/parks/1'
    expect(JSON.parse(response.body).first[1]).to eq "Couldn't find Park with 'id'=1"
  end
end
