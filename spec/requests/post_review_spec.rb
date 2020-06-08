require 'rails_helper'

describe "post a review route", :type => :request do
  
  before do
    post '/reviews', params: {:author => 'test_author', :content => 'Cleanse hoodie offal asymmetrical franzen celiac beard church-key stumptown fingerstache mustache distillery.', :country => 'Mexico', :city => "Seattle" }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the review content' do 
    expect(JSON.parse(response.body)['content']).to eq('Cleanse hoodie offal asymmetrical franzen celiac beard church-key stumptown fingerstache mustache distillery.')
  end 

  it 'returns the country name' do 
    expect(JSON.parse(response.body)['country']).to eq('Mexico')
  end 

  it 'returns the city name' do 
    expect(JSON.parse(response.body)['city']).to eq('Seattle')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "Receive exception on Post review route", :type => :request do

  before do
    post '/reviews', params: {:author => '', :content => 'Cleanse hoodie offal asymmetrical franzen celiac beard church-key stumptown fingerstache mustache distillery.', :country => 'Mexico', :city => "Seattle" }
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
