require 'spec_helper'

describe "Static pages" do
  let(:base_title){"Ruby"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit root_path
      expect(page).not_to have_title("|Home")
    end
    it "should not have a custom page title" do
      visit root_path
      expect(page).to have_title("Ruby")
    end
  end

  describe "Help Page" do
    
    it "Should have the content 'Help Page' " do
      visit help_path
      expect(page).to have_content('Help Page')
    end
     it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title}|Help")
    end
  end
  
  describe "About Page" do
    it "Should have the content 'About Page'" do
      visit about_path
      expect(page).to have_content('About Page')
    end
     it "should have the title 'Home'" do
      visit about_path
      expect(page).to have_title("#{base_title}|About")
    end
  end

  describe "Contact Page" do
    it "Should have the content 'Contact Page'" do
      visit contact_path     
      expect(page).to have_content('Contact Page')
    end
    it "Should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title}|Contact")
    end
  end
end



