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
  it('allows user to enter place and returns a successful submit message, and then the content after clicking back') do
    visit('/places')
    click_link('Back')
    expect(page).to have_content("Oregon Coast")
  end
end
