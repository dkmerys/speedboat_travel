require 'rails_helper'

describe "put a review route", :type => :request do
  
  before do
    @review = Review.create( {:id => 20, :author => "Morty", :content => "blah blah blah blah blah blah blah blah blah blah blah blah", :city => "Peru", :country => "Mexico"})
    put '/reviews/20', params: { :content => 'Peru was an amazing place to visit, they had the best selection of mega seeds, but we had to smuggle them out. SAD!' }
  end

  it 'returns the updated content' do
    expect(JSON.parse(response.body)['message']).to eq('This review was updated successfully.')
  end

  it 'returns a updated status' do
    expect(response).to have_http_status(200)
  end
end

# bundle exec rake db:reset RAILS_ENV=test