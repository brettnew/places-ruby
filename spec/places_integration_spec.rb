require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path' , {:type => :feature}) do
  it('allows user to enter place and returns a successful submit message') do
    visit('/')
    fill_in('place_name', :with => 'Oregon Coast')
    click_button('Add Place')
    expect(page).to have_content("The place has been successfully submitted!")
  end
end
