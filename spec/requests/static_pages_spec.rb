require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Userbased App') }
    it { should have_title(full_title('')) }
    it { should have_content('Language') }
    it { should have_content('Español') }
    it { should_not have_title('| Home') }

    describe "change default language" do
      before { click_link "Español" }
      it { page.should have_content('Inicio') }

      it "goback to default language" do
        click_link "English"
        page.should have_content('Home')
      end
    end
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }

    it "change default language" do
      click_link "Español"
      page.should have_content('Ayuda')
    end
  end

  describe "About page" do
    before { visit about_path }
    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }

    it "change default language" do
      click_link "Español"
      page.should have_content('Acerca')
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
