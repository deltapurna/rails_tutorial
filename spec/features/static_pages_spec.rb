require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Rails Tutorial Demo"}
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have base_title Rails Tutorial Demo" do
      visit '/static_pages/home'
      page.should have_title("#{base_title}")
    end

    it "should not have page title | Home" do
      visit '/static_pages/home'
      page.should_not have_title(" | Home")
    end    
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have title Rails Tutorial Demo | Help" do
      visit '/static_pages/help'
      page.should have_title("#{base_title} | Help")
    end
  end
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have title Rails Tutorial Demo | About Us" do
      visit '/static_pages/about'
      page.should have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end

    it "should have title Rails Tutorial Demo | Contact Us" do
      visit '/static_pages/contact'
      page.should have_title("#{base_title} | Contact Us")
    end
  end
end
