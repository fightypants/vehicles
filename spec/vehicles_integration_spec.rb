require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('index path', {:type => :feature}) do
  it("shows the links for viewing and adding dealerships") do
  visit('/')
  expect(page).to have_content('Welcome to')
  end
end
