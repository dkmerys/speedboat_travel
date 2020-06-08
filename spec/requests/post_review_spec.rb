# require 'rails_helper'

# describe "post a review route", :type => :request do
  
#   before do
#     post '/reviews', params: {:author => 'test_author', :content => 'test_content', :country => 'Mexico', :city => "Seattle" }
#   end

#   it 'returns the author name' do
#     expect(JSON.parse(response.body)['author']).to eq('test_author')
#   end

#   it 'returns the review content' do 
#     expect(JSON.parse(response.body)['content']).to eq('test_content')
#   end 

#   it 'returns the country name' do 
#     expect(JSON.parse(response.body)['country']).to eq('Mexico')
#   end 

#   it 'returns the city name' do 
#     expect(JSON.parse(response.body)['city']).to eq('Seattle')
#   end

#   it 'returns a created status' do
#     expect(response).to have_http_status(:created)
#   end
# end
