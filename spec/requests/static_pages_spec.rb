require 'spec_helper'

describe "StaticPages" do
  describe "Home page"do
    it "should have content 'my app'"do
      visit '/static_pages/home'
      expect(page).to have_content('My App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial 4.0.0 Sample | Home")
    end
  end

  describe "Help page"do
    it "should have content'help'"do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial 4.0.0 Sample | Help")
    end
  end

  describe "About page"do
    it "should have content'About Us'"do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial 4.0.0 Sample | About Us")
    end
  end
end
