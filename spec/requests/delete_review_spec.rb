require 'rails_helper'

describe "delete a review route", :type => :request do
  
  before do 
    @review = Review.create( {:id => 20, :author => "Morty", :content => "blah blah blah blah blah blah blah blah blah blah blah blah", :city => "Peru", :country => "Mexico"})
    delete '/reviews/20'
  end

  it 'returns the deleted content' do
    expect(JSON.parse(response.body)['message']).to eq('This review has been successfully deleted!')
  end

  it 'returns a deleted status' do 
    expect(response).to have_http_status(200)
  end
end