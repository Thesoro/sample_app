require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should have the h1 'Home'" do
      visit root_path
      page.should have_selector('h1', :text => 'Home')
    end

    it "should not have a custom title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')    
    end
  end

    describe "Help page" do

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
  end

    describe "About page" do

    it "should have the title 'About Me'" do
      visit about_path
      page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | About Me")
    end
    it "should have the h1 'About Me'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Me')
    end
  end

      describe "Contact page" do

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
  end
end

