require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user entry and returns coin combinations') do
    visit('/')
    fill_in('title', :with => '.99')
    click_button('Send')
    expect(page).to have_content("You have 3 quarters, 2 dimes, 0 nickels, and 4 pennies")
  end
end
