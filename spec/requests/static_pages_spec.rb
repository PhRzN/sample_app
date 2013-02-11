require 'spec_helper'

describe "StaticPages" do
 
 describe "Home page" do
   
   it "should have the content 'Sample App'" do
     visit '/static_pages/home'
     page.should have_content('Sample App')
   end
   
   it "should have the right title" do
     visit '/static_pages/home'
     page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
   end
 end

 
 describe "Help page" do
   it "should have the word 'Help' in it" do
     visit '/static_pages/help'
     page.should have_content('Help')
    end
     it "should have the right title" do
       visit '/static_pages/help'
       page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
     end
 end
 
 describe "About page" do
    it "should have the word 'About Us' in it" do
      visit '/static_pages/about'
      page.should have_content('About Us')
     end
  
   it "should have the right title" do
     visit '/static_pages/about'
     page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
   end
  end
  
  describe "Generic page" do
    it "should have a generic title with no descriptor" do
      visit '/static_pages/generic'
      page.should_not have_selector('title', :text => "|Home")
    end
  end
end