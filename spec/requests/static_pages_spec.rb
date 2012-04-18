require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Shopping for a car?'" do
      visit '/static_pages/home'
      page.should have_selector('h2', :text => 'Shopping for a car?')
    end

    it "should have the correct page title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "eCarmony | Home")
    end

  end
end
