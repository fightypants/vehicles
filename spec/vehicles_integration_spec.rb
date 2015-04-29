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

   describe('dealerships/new path', {:type => :feature}) do
     it("has user add a new dealership") do
     visit('/dealerships/new')
     expect(page).to have_content('Add dealerships')
     end
   end

   describe('/dealerships path', {:type => :feature}) do
    it("displays all the dealerships") do
    visit('/dealerships')
    expect(page).to have_content('Dealerships')
    end
   end

   describe('adds dealership', {:type => :feature}) do
     it("adds a new dealership") do
      visit('dealerships/new')
      fill_in("Dealership's name", :with => "bobs trucks")
      click_button('Add Dealership')
      expect(page).to have_content('Success')
     end
   end

  
