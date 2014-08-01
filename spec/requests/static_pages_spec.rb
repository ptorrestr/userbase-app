require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Userbased App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Userbased App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title('User based App')
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end
end
