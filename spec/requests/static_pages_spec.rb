require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby|Home')
    end
  end

  describe "Help Page" do
    
    it "Should have the content 'Help Page' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
     it "should have the title 'Home'" do
      visit '/static_pages/help'
      expect(page).to have_title('Ruby|Help')
    end
  end
  
  describe "About Page" do
    it "Should have the content 'About Page'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Page')
    end
     it "should have the title 'Home'" do
      visit '/static_pages/about'
      expect(page).to have_title('Ruby|About')
    end
  end
end


