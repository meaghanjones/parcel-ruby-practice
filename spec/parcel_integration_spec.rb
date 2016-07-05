require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user input and returns the cost of shipping')do
    visit('/')
    fill_in('length', :with => 2)
    fill_in('width', :with => 4)
    fill_in('height', :with => 3)
    choose('Fast shipping')
    choose('Over 30lbs')
    choose('International Shipping')
    click_button('Caculate your shipping cost!')
    expect(page).to have_content("Your Package costs $11")
  end
end
