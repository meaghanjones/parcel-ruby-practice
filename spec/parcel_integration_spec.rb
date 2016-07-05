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
    fill_in('speed', :with => "fast")
    fill_in('weight', :with => "heavy")
    fill_in('distance', :with => "international" )
    click_button('Caculate your shipping cost!')
    expect(page).to have_contenct("Your Package costs $11")
  end
end
