require 'spec_helper'

describe "Static pages" do
  let(:base_title){"Ruby"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).not_to have_title("|Home")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby")
    end
  end

  describe "Help Page" do
    
    it "Should have the content 'Help Page' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
     it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title}|Help")
    end
  end
  
  describe "About Page" do
    it "Should have the content 'About Page'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Page')
    end
     it "should have the title 'Home'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title}|About")
    end
  end

  describe "Contact Page" do
    it "Should have the content 'Contact Page'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Page')
    end
    it "Should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title}|Contact")
    end
  end
end



